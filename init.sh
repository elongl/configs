#!/bin/bash

mkdir -p ~/apps ~/.local/bin

ln -sf $PWD/bin ~/bin
echo "Linked bin directory."

touch ~/.local_zshrc
ln -sf $PWD/.zshrc ~/.zshrc
echo "Linked Zsh."

mkdir -p ~/.config/nvim
ln -sf $PWD/init.vim ~/.config/nvim/init.vim
echo "Linked Nvim."

ln -sf $PWD/.tmux.conf ~/.tmux.conf
echo "Linked TMUX."

ln -sf $PWD/.gitconfig ~/.gitconfig
echo "Linked Git config."

mkdir -p ~/.config/rofi
ln -sf $PWD/rofi.rasi ~/.config/rofi/config.rasi
