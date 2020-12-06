#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
UNI=$(date +'%Y%m%d%H%M%S')
HOME=~
DOTFILES=.files

# Link dot file folder
rm -Rf $HOME/$DOTFILES
ln -fs $DIR/configs $HOME/$DOTFILES

# zsh
rm -f $HOME/.zshrc
ln -fs $HOME/$DOTFILES/zsh/.zshrc $HOME/.zshrc

sudo apt install tmux -y
rm -f $HOME/.tmux
rm -f $HOME/.tmux.conf
ln -fs $HOME/$DOTFILES/tmux $HOME/.tmux
ln -fs $HOME/.tmux/tmux.conf $HOME/.tmux.conf

rm -Rf $HOME/.config/nvim
mkdir -p $HOME/.config
ln -fs $HOME/$DOTFILES
