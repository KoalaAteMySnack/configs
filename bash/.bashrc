#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

screenfetch

alias mirrors="mirrorListGrab"
alias watchtex="termite -e 'vim $1' --hold & latexmk -pdf -pvc $1 && latexmk -c"
alias lockbsp="systemctl suspend && physlock"
