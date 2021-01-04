#!/bin/bash

CommitMessage="Changed Something"

if [ "$1" ];then
    CommitMessage=$1
fi

cp ~/.vimrc .
cp ~/.zshrc .
cp ~/.tmux.conf .

sudo rm -r .vim
mkdir .vim
sudo cp -r ~/.vim/colors .vim/
sudo cp -r ~/.vim/autoload .vim/

git add .
git commit -m "$CommitMessage"
git push
