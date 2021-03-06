#!/bin/bash

# 40_vim.sh
# Script to install vim modlues

echo "Hooking up .vim directories..."
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
[ -f ~/.vim/autoload/pathogen.vim ] || \
    ln -s ~/.dotfiles/libs/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
[ -d ~/.vim/bundle/vim-airline ] || \
    ln -s ~/.dotfiles/libs/vim-airline ~/.vim/bundle/vim-airline
[ -d ~/.vim/bundle/vim-fugitive ] || \
    ln -s ~/.dotfiles/libs/vim-fugitive ~/.vim/bundle/vim-fugitive
[ -d ~/.vim/bundle/vim-sensible ] || \
    ln -s ~/.dotfiles/libs/vim-sensible ~/.vim/bundle/vim-sensible
[ -d ~/.vim/bundle/unite.vim ] || \
    ln -s ~/.dotfiles/libs/unite.vim ~/.vim/bundle/unite.vim
if [ ! -d ~/.vim/bundle/vimproc.vim ]; then
    cd ~/.dotfiles/libs/vimproc.vim
    make
    cp -r autoload/* ~/.vim/autoload
    ln -s ~/.dotfiles/libs/vimproc.vim ~/.vim/bundle/vimproc.vim
fi
