" Common
syntax on
set number
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimbackup
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=0
set autoindent
set smartindent
set enc=utf-8
set fenc=utf-8
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set backspace=start,eol,indent
set imdisable

" Gauche
autocmd FileType scheme :let is_gauche=1

" Guard
au BufNewFile,BufRead Guardfile setf ruby

" Go
set rtp+=$GOROOT/misc/vim
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu
",preview

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'groenewege/vim-less'
Bundle 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on
