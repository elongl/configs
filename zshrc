ZSH_THEME="robbyrussell"
plugins=(git z)

export PATH=$PATH:$HOME/bin
export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim

source $ZSH/oh-my-zsh.sh

alias dump="objdump -d -M intel"
alias vim="nvim"

# Schedule sleep in X minutes, use like: sleep-in 60
function sleep-in() {
  local minutes=$1
  local datetime=`date -v+${minutes}M +"%m/%d/%y %H:%M:%S"`
  sudo pmset schedule sleep "$datetime"
}

