# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH=$PATH:"/usr/local/go/bin"
# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		# We have color support; assume it's compliant with Ecma-48
		# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
		# a case would tend to support setf rather than setaf.)
		color_prompt=yes
	else
		color_prompt=
	fi
fi

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:[\[\033[01;34m\]\w\[\033[00m]-\n\n:-)> '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm* | rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
*) ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# create an ascii art for the lauching window

cat /home/unknown/fox.txt

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi
alias emacs="emacsclient -c -a 'emacs'"

#______________________________________________________________________________________________________________________
#                                      Blufox Special Functions :)
#______________________________________________________________________________________________________________________

# for creating dir and cd into it in one line
function undak {
	command mkdir $1 && command cd $1 || command touch $1 && echo -e "\033[34mUndaaki: \033[m$(pwd)"
}

# for removing the dir and files in one line
function kala {
	command rm -rf $1 || command rmdir $1 || command rm $1 && echo -e "\033[34mKalanju. \033[m"
}

# for updating the system
function chambikko {
	echo -e "\033[34mOombikko..\033[m" && command sudo apt update && command sudo apt upgrade && echo -e "\033[34mNiyanallo kodathi \033[m"
}

# creating virtualenv for the project
function foxenv {
	echo -e "\033[34mWait..\033[m" && command python3 -m venv $1 && command source $1/bin/activate && echo -e "\033[34mNew Space Activated \033[m"
}

# install all required packages in one word using pip
function foxreq {
	echo -e "\033[34mRunning\033[m" && command pip install -r $1 && echo -e "\033[34mComplete \033[m"
}

# Update gnome terminal title
function title() {
	# Set terminal tab title. Usage: title "new tab name"
	prefix=${PS1%%\\a*}          # Everything before: \a
	search=${prefix##*;}         # Eeverything after: ;
	esearch="${search//\\/\\\\}" # Change \ to \\ in old title
	PS1="${PS1/$esearch/$@}"     # Search and replace old with new
}

function connectCwStudioServer() {
	cd ~/Desktop/programs/flxii/Keys
	ssh -i "coworkingStudio.pem" ubuntu@ec2-18-60-177-236.ap-south-2.compute.amazonaws.com

}

function connectSandboxMongoServer() {
	ssh -i Desktop/programs/flxii/Keys/coworkingStudio.pem -N -f -L $1:localhost:27017 ubuntu@ec2-18-60-177-236.ap-south-2.compute.amazonaws.com
}

#kill any running port
function kill_port() {
	command sudo kill -9 $(sudo lsof -t -i:$1)
}

#extract any files
extract() {
	for archive in "$@"; do
		if [ -f "$archive" ]; then
			case $archive in
			*.tar.bz2) tar xvjf $archive ;;
			*.tar.gz) tar xvzf $archive ;;
			*.bz2) bunzip2 $archive ;;
			*.rar) rar x $archive ;;
			*.gz) gunzip $archive ;;
			*.tar) tar xvf $archive ;;
			*.tbz2) tar xvjf $archive ;;
			*.tgz) tar xvzf $archive ;;
			*.zip) unzip $archive ;;
			*.Z) uncompress $archive ;;
			*.7z) 7z x $archive ;;
			*) echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

# Copy file with a progress bar
cpp() {
	set -e
	strace -q -ewrite cp -- "${1}" "${2}" 2>&1 |
		awk '{
	count += $NF
	if (count % 10 == 0) {
		percent = count / total_size * 100
		printf "%3d%% [", percent
		for (i=0;i<=percent;i++)
			printf "="
			printf ">"
			for (i=percent;i<100;i++)
				printf " "
				printf "]\r"
			}
		}
	END { print "" }' total_size="$(stat -c '%s' "${1}")" count=0
}

#Panick Git push combo ;)
panikg() {
	git add .
	git commit -m "panikg commit"
	git push $1 $2
}

alias android='/usr/local/android-studio/bin/studio.sh'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/unknown/anaconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/home/unknown/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/home/unknown/anaconda3/etc/profile.d/conda.sh"
	else
		export PATH="/home/unknown/anaconda3/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi
#. "$HOME/.cargo/env"
source ~/.bash_completion/alacritty
source ~/.bash_completion/alacritty
source /home/unknown/Desktop/programs/alacritty/extra/completions/alacritty.bash
