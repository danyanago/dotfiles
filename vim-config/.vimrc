set nocompatible              " Required
filetype off                  " Required

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'preservim/nerdtree'     " File explorer
Plugin 'tpope/vim-fugitive'     " Git integration
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'scrooloose/syntastic'   " Syntax checking

call vundle#end()            " Required
filetype plugin indent on    " Required

" Basic settings
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set background=dark
set clipboard=unnamedplus
