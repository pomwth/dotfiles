#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
UNI=$(date +'%Y%m%d%H%M%S')

# Link dot file folder
rm -Rf ~/.files
ln -fs $DIR/configs ~/.files

# zsh
rm -f ~/.zshrc
ln -fs ~/.files/zsh/.zshrc ~/.zshrc

sudo apt install tmux -y
rm -f ~/.tmux
rm -f ~/.tmux.conf
ln -fs ~/.files/tmux ~/.tmux
ln -fs ~/.tmux/tmux.conf ~/.tmux.conf
