ZSH_THEME="cloud"
plugins=(git z)

export PATH=$HOME/bin:$PATH:/opt/homebrew/bin
export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim

source $ZSH/oh-my-zsh.sh

alias vim=nvim


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/egk/apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/egk/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/egk/apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/egk/apps/google-cloud-sdk/completion.zsh.inc'; fi


alias k=kubectl
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

