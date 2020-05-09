#!/bin/bash


CommitMessage="Changed Something"

if [ $1 ];then
    CommitMessage=$1
fi

cp ../.vimrc .
cp ../.zshrc .
cp ../.tmux.conf .

git add .
git commit -m "$CommitMessage"
git push
