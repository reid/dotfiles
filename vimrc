set term=screen

set background=dark
colo ir_black

call pathogen#infect()

syntax enable

hi DiffAdd term=reverse cterm=bold ctermbg=darkgreen ctermfg=black
hi DiffChange term=reverse cterm=bold ctermbg=gray ctermfg=black
hi DiffText term=reverse cterm=bold ctermbg=blue ctermfg=black
hi DiffDelete term=reverse cterm=bold ctermbg=darkred ctermfg=black

set backspace=indent,eol,start
set history=100
set incsearch
set nocompatible
set nowrap
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set tabstop=4
set expandtab
set undolevels=1000
set number
filetype plugin indent on
syntax on
