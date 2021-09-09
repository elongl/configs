#!/bin/bash

mkdir -p ~/bin
echo "Created $(whoami)'s bin directory."

ln -sf $(pwd)/gdbinit ~/.gdbinit
echo "Linked GDB."

ln -sf $(pwd)/zshrc ~/.zshrc
echo "Linked Zsh."

ln -sf $(pwd)/vim ~/.config/nvim/init.vim
echo "Linked Nvim."

ln -sf $(pwd)/tmux ~/.tmux.conf
echo "Linked TMUX."

ln -sf $(pwd)/vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
echo "Linked VSCode settings."

cat vscode_extensions | xargs -L1 code --install-extension
echo "Installed VSCode extensions."

rm -rf ~/.ipython/profile_default/startup
ln -sf $(pwd)/ipython ~/.ipython/profile_default/startup
echo "Linked IPython startup scripts."

