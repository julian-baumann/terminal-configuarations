#!/bin/bash

CommitMessage="Changed something"

if [ "$1" ];then
    CommitMessage=$1
fi

cp ~/.vimrc .
cp ~/.zshrc .
cp ~/.tmux.conf .

rm -rf .vim
mkdir .vim
cp -rf ~/.vim/colors .vim/
cp -rf ~/.vim/autoload .vim/

git add .
git commit -m "$CommitMessage"
git push
