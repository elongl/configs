#!/bin/bash

mkdir -p ~/bin
echo "Created $(whoami)'s bin directory."

ln -sf $PWD/gdbinit ~/.gdbinit
echo "Linked GDB."

ln -sf $PWD/zshrc ~/.zshrc
echo "Linked Zsh."

mkdir -p ~/.config/nvim
ln -sf $PWD/vim ~/.config/nvim/init.vim
echo "Linked Nvim."

ln -sf $PWD/tmux ~/.tmux.conf
echo "Linked TMUX."

ln -sf $PWD/vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
echo "Linked VSCode settings."

cat vscode_extensions | xargs -L1 code --install-extension
echo "Installed VSCode extensions."

rm -rf ~/.ipython/profile_default/startup
mkdir -p ~/.ipython/profile_default
ln -sf $PWD/ipython ~/.ipython/profile_default/startup
echo "Linked IPython startup scripts."

