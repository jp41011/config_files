# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#PS1="\$(surveystate +%H%M)\w $ " printed out survey summary after every cd and ls
PATH=$PATH:~/scripts


alias vimr='vim -R'
alias la='ls -a'
alias ll='ls -la'

# Eric - Puts currecnt director in the window title of putty window ## Windows OS specific
#case "$TERM" in
#xterm*|rxvt*)
#    PROMPT_COMMAND='audit;echo -ne "\033]0;${PWD}\007"'
#    ;;
#*)
#    ;;
#esac

# Minh - Highlights searched for words
export GREP_COLOR='1;37;44'
alias grep='grep --color=auto -B2 -A3'

# add screen stuffs
