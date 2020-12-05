#!/bin/bash

DIR=`dirname "$0"`
UNI=$(date +'%Y%m%d%H%M%S')

# Link dot file folder
mv ~/.files ~/.files-bck$UNI
ln -s $DIR/configs ~/.files

# zsh
mv ~/.zshrc ~/.zshrc-bck$UNI
ln -s ~/.files/zsh/.zshrc ~/.zshrc

sudo apt install tmux -y
