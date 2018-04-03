#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

screenfetch

alias mirrors="mirrorListGrab"

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
