# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


export EDITOR="vim"
export VISUAL="vim"
export PATH=$PATH:~/.panel

alias -s html=firefox
alias -s js=vim
alias -s mp4=mpv
alias keyno='setxkbmap no'
alias keyus='setxkbmap us'
alias bserv='ssh root@198.211.127.106'
