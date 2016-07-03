" Common
syntax on
set number
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimbackup
set undodir=$HOME/.vimbackup
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=0
set autoindent
set smartindent
set enc=utf-8
set fenc=utf-8
set backspace=start,eol,indent
set imdisable
colorscheme desert

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"plugins

call vundle#end()
filetype plugin indent on
