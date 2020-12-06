#!/bin/bash

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
UNI=$(date +'%Y%m%d%H%M%S')

# Link dot file folder
mv ~/.files ~/.bck/.files-bck$UNI
ln -fs $DIR/configs ~/.files

# zsh
mv ~/.zshrc ~/.bck/.zshrc-bck$UNI
ln -fs ~/.files/zsh/.zshrc ~/.zshrc

sudo apt install tmux -y
mv ~/.tmux.conf ~/.bck/.tmux.conf-bck$UNI
ln -fs ~/.files/tmux/tmux.conf ~/.tmux.conf

