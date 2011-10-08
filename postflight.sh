#!/bin/sh
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
[ -e ~/.vim/autoload/pathogen.vim ] || curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
