ZSH_THEME="robbyrussell"
plugins=(git z)

export PATH=$PATH:$HOME/bin:$HOME/.local/bin
export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim
export EDITOR=$VISUAL

source $ZSH/oh-my-zsh.sh

alias dump="objdump -d -M intel"
alias copy="xclip -selection clipboard"
alias vim="nvim"

