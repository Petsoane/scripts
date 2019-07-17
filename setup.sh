#!/bin/bash

echo "Setting up the session"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setting up the vim script"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "Appending my own settings"
echo "set softtabstop=4" >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set noexpandtab" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "set listchars=tab:▸\ ,trail:·,precedes:←,extends:→" >> ~/.vimrc
echo "colorscheme ir_black"
