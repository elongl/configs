ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git z)
source $ZSH/oh-my-zsh.sh
source $HOME/.local_zshrc

PROMPT='%{$fg[yellow]%}[%D{%H:%M:%S}] '$PROMPT
PATH=$HOME/bin:$HOME/.local/bin:/opt/homebrew/bin:$PATH
VISUAL=vim

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

alias vim="nvim"
alias k="kubectl"
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
alias gsub="gcmsg 'Synced submodules.' --no-verify && gp"

gus() {
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


run() {
  nohup "$@" >/dev/null 2>&1 &
  disown
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
