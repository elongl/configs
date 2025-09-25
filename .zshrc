ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git z)
source $ZSH/oh-my-zsh.sh
source $HOME/.local_zshrc

PROMPT='%{$fg[yellow]%}[%D{%H:%M:%S}] '$PROMPT
PATH=$HOME/bin:$HOME/.local/bin:/opt/homebrew/bin:$PATH
VISUAL=nvim
EDITOR=nvim

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

alias vim="nvim"
alias fin="say Finished"

## Cross-platform clipboard aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    alias copy="pbcopy"
    alias paste="pbpaste"
else
    # Linux
    alias copy="xclip -selection clipboard -i"
    alias paste="xclip -selection clipboard -o"
fi

## Git
alias gstap="gsta --patch"
alias grstp="grst --patch"
alias gcop="gco --patch"
alias gcfix="gc --fixup"
alias gcsub="gcmsg 'Synced submodules.' --no-verify && gp"
alias gtf="git tag --force"
alias gptf="git push --force --tags"
alias gcleanf="git clean -fdX"


run() {
  nohup "$@" >/dev/null 2>&1 &
  disown
}

bkup() {
  local file_path="$1"
  local backup_path="${file_path}.bkup"
  local counter=1

  # If .bkup exists, find the next available number
  while [[ -f "$backup_path" ]]; do
    backup_path="${file_path}.bkup.${counter}"
    ((counter++))
  done

  cp "$file_path" "$backup_path"
}

lbkup() {
  local backup_path="$1"

  if [[ -z "$backup_path" ]]; then
    echo "Error: Please provide the backup file path."
    return 1
  fi

  # Strip .bkup or .bkup.<COUNTER> to get original filename
  local file_path="${backup_path%.bkup*}"

  cp "$backup_path" "$file_path"
}

glsub() {
  echo "🔄 Updating main repository..."
  current_branch=$(git symbolic-ref --quiet --short HEAD)
  if [ -z "$current_branch" ]; then
    echo "⚠️  Main repo: Detached HEAD, skipping pull"
  else
    echo "📍 Main repo on branch: $current_branch"
    echo "➡️  Pulling origin/$current_branch..."
    git pull origin "$current_branch"
  fi

  echo "🔄 Updating all Git submodules..."
  git submodule foreach --recursive '
    echo "===> Entering $name"
    branch=$(git symbolic-ref --quiet --short HEAD)

    if [ -z "$branch" ]; then
      echo "⚠️  Skipping: Detached HEAD"
    else
      echo "📍 On branch: $branch"
      echo "➡️  Pulling origin/$branch..."
      git pull origin "$branch"
    fi
  '
}

venv() {
  local venv_path="$1"

  if [[ -z "$venv_path" ]]; then
    echo "Error: Please provide the path to the virtual environment."
    return
  fi

  source "$venv_path/bin/activate"

  if [[ -n "$TMUX" ]]; then
    tmux set-environment VIRTUAL_ENV "$VIRTUAL_ENV"
  fi
}

devenv() {
  deactivate

  if [[ -n "$TMUX" ]]; then
    tmux set-environment -u VIRTUAL_ENV
  fi
}

if [ -n "$VIRTUAL_ENV" ]; then
    source $VIRTUAL_ENV/bin/activate
elif [ -d "$HOME/work/venvs/general" ]; then
    venv "$HOME/work/venvs/general"
fi
