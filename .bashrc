# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

set -o emacs

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias pgrep='pgrep --color=auto'

alias h='history'

# https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions
alias l='ls'
alias ll='ls -lh'
alias la='ls -lah'
alias lt='la -lth'
alias lr='la -ltrh'

# http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
alias ll.='ls -ld .*'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# https://github.com/losingkeys/dotfiles/blob/master/.shell-helpers/aliases
alias '?'='which'

alias gs='git status --short'
alias gst='git status'
alias gb='git branch'
alias gr='git remote -v'
alias gl='git log'

alias vi='vim'

HISTSIZE=1000
HISTFILESIZE=50000
shopt -s histappend
