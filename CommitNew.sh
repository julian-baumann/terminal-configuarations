#!/bin/bash

CommitMessage="Changed Something"

if [ "$1" ];then
    CommitMessage=$1
fi

cp ~/.vimrc .
cp ~/.zshrc .
cp ~/.tmux.conf .

sudo rm -r .vim
sudo cp -r ~/.vim/colors .
sudo cp -r ~/.vim/autoload .

git add .
git commit -m "$CommitMessage"
git push
