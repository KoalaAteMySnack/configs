#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
export PATH=$PATH:~/bin
export VISUAL=vim
export EDITOR="$VISUAL"
