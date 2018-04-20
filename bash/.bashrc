#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PWD=$(pwd)
PS1='$PWD :$: '

neofetch

alias mirrors="mirrorListGrab"
alias clipdel="rm -r $XDG_RUNTIME_DIR/clipmenu*"
alias weather="curl wttr.in/sydney"
alias clb='printf "\033c"'
alias chrem='google-chrome-stable --proxy-auto-detect'
alias chrom='chromium --proxy-auto-detect'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias llr='ls -lr'
alias llt='ls -lt'
alias llar='ls -lar'
alias llat='ls -lat'

ifw(){
	sudo iftop -i wlp2s0
}

tcpw(){
	sudo tcpdump -i wlp2s0 | grep $1
}

shredthis(){
	if [[ -f $1 ]]
	then
		read -p "Deleting $1 ... Are you sure? (type yes)" answer
		if [[ $answer == "yes" ]]
		then
			shred --iterations=10 -u $1
		else
			echo "Assuming no."
		fi
	elif [[ -z $1 ]]
	then
		echo "No file selected"
	else
		echo "Not a valid file"
	fi
}

muttrc(){
	mutt -F $HOME/.mutt/muttrc.$1
}

ytmp3(){
	youtube-dl --extract-audio --audio-format mp3 $1 -o "$HOME/media/youtube/$2"
}
