#!/bin/zsh

lst=(.vimrc .vim .emacs.d .zshrc .zsh)

for v in ${lst[@]}; do
    if [ ! -e ~/$v ]; then
        ln -s $(pwd)/$v ~/$v
    fi
done

source ~/.zshrc

function mkdir_s {
    if [ ! -e $1 ]; then
        mkdir $1
    fi
}

mkdir_s ~/.vimbackup

