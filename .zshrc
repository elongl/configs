ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git z)
source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[yellow]%}[%D{%H:%M:%S}] '$PROMPT
PATH=$HOME/bin:/opt/homebrew/bin:$PATH
VISUAL=vim

alias vim="nvim"
alias k="kubectl"
alias fin="say Finished"
alias gstap="gsta --patch"
alias grstp="grst --patch"
alias gcop="gco --patch"

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
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/egk/apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/egk/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/egk/apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/egk/apps/google-cloud-sdk/completion.zsh.inc'; fi


[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

