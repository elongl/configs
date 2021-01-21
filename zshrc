ZSH_THEME="robbyrussell"
plugins=(git z)

export PATH=$PATH:$HOME/bin
export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim

source $ZSH/oh-my-zsh.sh

alias dump="objdump -d -M intel"
alias vim="nvim"

