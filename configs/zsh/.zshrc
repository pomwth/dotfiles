export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

plugins=(git)

source $ZSH/oh-my-zsh.sh

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
# Otherwise start tmux
[[ -z "$TMUX" ]] && exec tmux

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
