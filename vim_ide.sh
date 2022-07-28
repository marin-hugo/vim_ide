#!/bin/bash
# source: https://dane-bulat.medium.com/how-to-turn-vim-into-a-lightweight-ide-6185e0f47b79


# Ensure the system is up to date and has
# the required systems
sudo apt update
sudo apt install universal-ctags vim git ack

# setup the directories
mkdir -p ~/.vim/bundle

# install the Vundle plugin manager
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim
cp ./.vimrc ~/.vimrc

vim +PluginInstall +qall
