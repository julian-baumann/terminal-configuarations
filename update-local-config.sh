#!/bin/bash

sudo rm -r .TerminalBackup
mkdir .TerminalBackup
cp ~/.zshrc .TerminalBackup/
cp ~/.vimrc .TerminalBackup/
cp ~/.tmux.conf .TerminalBackup/
cp -r ~/.vim .TerminalBackup/

cp .zshrc ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp -r .vim ~/
