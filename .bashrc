#
#    ~/.bashrc
#

# If not running interactively, don't do anything	
[[ $- != *i* ]] && return

#### ALIAS ####

#COREUTLS

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

# USER

# keyboard layouts
alias keyno='setxkbmap no'
alias keyus='setxkbmap us'

# PACMAN

# removes all orphan packages
alias pacro="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

#### INPUT MODE ####

set -o vi

#### #EXPORTS #####

export EDITOR=vim

#### PROMPT ####

PS1='\[\033[1;33m\]\u\]\[\033[1;37m\]@\[\033[1;32m\]\h \[\e[1;36m\][\l] \[\033[1;31m\][\w] \n\[\033[1;31m\]>> \[\033[00m\]'
