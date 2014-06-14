# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

cd /home/jaminb/v2/selfserve/

alias sf='cd /home/jaminb/v2/selfserve/' # survey folder
alias jwd='cd /home/jaminb/v2/selfserve/14da/140691/' #juan's working folder

alias la='ls -a'
alias ll='ls -la'

alias sampleSourcesBuilder='/home/jaminb/v2/temp/minh/scripts/sampleSourcesBuilder/sampleSourcesBuilder.py'
alias builder-clean='/home/jaminb/v2/temp/minh/scripts/builder-clean/builder-clean "$@"'
