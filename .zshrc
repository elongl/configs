ZSH_THEME="cloud"
plugins=(git z)

export PATH=$HOME/bin:/opt/homebrew/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim

source $ZSH/oh-my-zsh.sh

alias vim=nvim
alias fin="say Finished"

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


alias k=kubectl
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

