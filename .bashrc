# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#PS1="\$(surveystate +%H%M)\w $ " printed out survey summary after every cd and ls
PATH=$PATH:~/scripts

cd /home/jaminb/v2/selfserve/ # start in selfserve/

alias sf='cd /home/jaminb/v2/selfserve/' # survey folder
alias mytemp='cd /home/jaminb/v2/temp/jpedraza/'

alias vims='vim survey.xml'
alias vimr='vim -R'

alias vis='vim survey.xml'
alias vir='vim -R survey.xml'

alias la='ls -a'
alias ll='ls -la'

alias sampleSourcesBuilder='/home/jaminb/v2/temp/minh/scripts/sampleSourcesBuilder/sampleSourcesBuilder.py'
alias builder-clean='/home/jaminb/v2/temp/minh/scripts/builder-clean/builder-clean "$@"' # removes the builder ... "stuff" from the survey.xml

# Eric - Puts currecnt director in the window title of putty window
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='audit;echo -ne "\033]0;${PWD}\007"'
    ;;
*)
    ;;
esac

# Minh - Highlights searched for words
export GREP_COLOR='1;37;44'
alias grep='grep --color=auto -B2 -A3'

# add screen stuff
