#!/bin/bash

# jumpstart
VIM=~/.vim
[[ ! -d $VIM  ]] || mkdir $VIM
[[ ! -d $VIM/bookmarks  ]] || mkdir $VIM/bookmarks

# color scheme
VIMCOLORS=~/.vim/colors
[[ ! -d $VIMCOLORS  ]] || mkdir $VIMCOLORS
wget https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Bright.vim -P $VIMCOLORS

# install vim plugin manager : vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
