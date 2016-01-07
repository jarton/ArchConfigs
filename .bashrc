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

#USER
alias keyno='setxkbmap no'
alias keyus='setxkbmap us'
alias emacs='emacs --no-window'
alias home="cd ~/"
alias upgrade='yaourt -Syu --aur'
alias updategit="git push -u origin master"

#PACMAN
alias pacro="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

#DEV
alias angularseed="git clone --depth=1 https://github.com/angular/angular-seed.git"

#### SHELL & ENV SETTINGS ####

#MODE
set -o vi

#EXPOERTS
export EDITOR=vim
export TERM="rxvt-unicode-256color"
export PATH=$PATH:~/.panel

# Color man pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

PS1='\[\033[1;33m\]\u\]\[\033[1;37m\]@\[\033[1;32m\]\h \[\e[1;36m\][\l] \[\033[1;31m\][\w] \n\[\033[1;31m\]>> \[\033[00m\]'
