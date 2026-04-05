ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git z zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source $HOME/.local_zshrc

PROMPT='%{$fg[yellow]%}[%D{%H:%M:%S}] '$PROMPT
PATH=$HOME/bin:$HOME/.local/bin:/opt/homebrew/bin:$PATH

VISUAL=nvim
EDITOR=nvim

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

alias f="find . -iname"
fa() { find . -iname "*$1*" }
alias a="codex"
alias vim="nvim"
alias fin="say Finished"
alias curl="curl -sS"

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

## WSL-specific aliases
if [[ -v WSLENV ]]; then
    alias open="explorer.exe"
fi

## Git
alias gstap="gsta --patch"
alias grstp="grst --patch"
alias gcop="gco --patch"
alias gcfix="gc --fixup"
alias gcsub="gcmsg 'Synced submodules.' --no-verify && gp"
alias gsu="git submodule update --init --recursive --jobs 8"
alias gtf="git tag --force"
alias gptf="git push --force --tags"
alias gcleanf="git clean -fdX"
alias gbkup="git add . && git commit -m 'Backup' && git push"


run() {
  nohup "$@" >/dev/null 2>&1 &
  disown
}

bkup() {
  if [[ $# -eq 0 ]]; then
    echo "Error: Please provide at least one path."
    return 1
  fi

  for file_path in "$@"; do
    local backup_path="${file_path}.bkup"
    local counter=1

    # If .bkup exists, find the next available number
    while [[ -e "$backup_path" ]]; do
      backup_path="${file_path}.bkup.${counter}"
      ((counter++))
    done

    cp -a "$file_path" "$backup_path"
  done
}

lbkup() {
  if [[ $# -eq 0 ]]; then
    echo "Error: Please provide at least one backup path."
    return 1
  fi

  for backup_path in "$@"; do
    # Strip .bkup or .bkup.<COUNTER> to get original filename
    local file_path="${backup_path%.bkup*}"

    if [[ -d "$backup_path" ]]; then
      if [[ -e "$file_path" ]]; then
        rm -rf "$file_path"
      fi
      cp -a "$backup_path" "$file_path"
    else
      cp -a "$backup_path" "$file_path"
    fi
  done
}

srv() {
  cmd="$*"
  win_index=8

  if [ -z "$TMUX" ]; then
    echo "Not inside tmux. Please start tmux first."
    return 1
  fi

  if ! tmux list-windows | grep -q "^$win_index:"; then
    tmux new-window -d -t "$win_index" -n "servers" "$cmd"
  else
    tmux split-window -t "$win_index" -v "$cmd"
    tmux select-layout -t "$win_index" even-vertical
  fi
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/apps/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/apps/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/apps/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/apps/google-cloud-sdk/completion.zsh.inc"; fi
