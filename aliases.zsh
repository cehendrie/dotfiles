# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

alias h='fc -l 0'
alias cat=bat
alias vi=nvim
alias devd='cd ~/dev/projects/github.com/cehendrie/'
alias devh='cd ~/dev/repos/github.com/cehendrie/'
alias devl='cd ~/dev/repos/gitlab.com/cehendrie/'
alias repoh='cd ~/dev/repos/github.com/cehendrie/'
alias repol='cd ~/dev/repos/gitlab.com/cehendrie/'

export EDITOR="nvim"

# exa
# A modern replacement for ls
# https://the.exa.website
alias ls='exa'
alias ll='exa -la'
alias ll.='exa -ld .*'
alias lt='exa -T'
alias ltd='exa -TD'

# git
alias gpom='git push origin master'
alias gpoma='git push origin main'

# apple / macOs
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias bbedit='open -a /Applications/BBEdit.app/'

# zsh
alias zshconfig='sublime ~/.zshrc'
alias ohmyzsh='sublime ~/.oh-my-zsh'

function lsofport() {
	lsof -n -i4TCP:$1 | grep LISTEN
}
alias alias lsport=lsofport

