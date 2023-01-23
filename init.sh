#!/bin/bash

mkdir -p ~/bin
echo "Created $USER\'s bin directory."

ln -sf $PWD/gdbinit ~/.gdbinit
echo "Linked GDB."


ln -sf $PWD/zshrc ~/.zshrc
echo "Linked Zsh."

mkdir -p ~/.config/nvim
ln -sf $PWD/vim ~/.config/nvim/init.vim
echo "Linked Nvim."

ln -sf $PWD/tmux ~/.tmux.conf
echo "Linked TMUX."

ln -sf $PWD/gitconfig ~/.gitconfig
echo "Linked Git config."

rm -rf ~/.ipython/profile_default/startup
mkdir -p ~/.ipython/profile_default
ln -sf $PWD/ipython ~/.ipython/profile_default/startup
echo "Linked IPython startup scripts."

