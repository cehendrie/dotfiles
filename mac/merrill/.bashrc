#alias ll='ls -FGlAhp'
#alias la='ls -Adl .*'
#alias ..='cd ../'

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

set -o emacs

# Bash prompt
# http://bashrcgenerator.com
export PS1="\u@\h:\W\\$ \[$(tput sgr0)\]"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias pgrep='pgrep --color=auto'

alias h='history'
alias hh='history 20'
alias hhh='history 50'
alias hhhh='history 100'
alias h1='history 10'
alias h2='history 20'
alias h11='history 100'

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

alias g="git"
alias gc='git checkout'
alias gcd='git checkout develop'
alias gcm='git checkout master'
alias gst='git status'
alias gs='git stash'
alias gsl='git stash list'
alias gb='git branch'
alias gr='git remote -v'
alias gl='git log --name-only'
alias ga='git add'
alias glud='git pull upstream develop'
alias glum='git pull upstream master'

alias vi='vim'

alias os='open -a /Applications/Sublime\ Text.app/'
alias osub='open -a /Applications/Sublime\ Text.app/'

HISTSIZE=1000
HISTFILESIZE=50000
shopt -s histappend
