#!/bin/bash

mkdir ~/BackupTerminalConfig
mv ~/.zshrc ~/BackupTerminalConfig/
mv ~/.vimrc ~/BackupTerminalConfig/
mv ~/.tmux.conf ~/BackupTerminalConfig/
#mv ~/.vim ~/BackupTerminalConfig

cp .zshrc ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp -r .vim ~/
