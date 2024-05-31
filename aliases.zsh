# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

alias ..='cd ..'
alias ...='cd ../..'
alias h='fc -l 0'
alias cat=bat
alias vi=nvim
alias devd='cd ~/dev/repos/github.com/MerrillCorporation/'

export EDITOR="nvim"

# exa / eza
# A modern replacement for ls
# https://the.exa.website
alias ls='eza'
alias ll='eza -la'
alias ll.='eza -ld .*'
alias lt='eza -T'
alias ltd='eza -TD'

# git (https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh)
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff'
alias glg='git log --stat'
alias glp="_git_log_prettily"
alias gr='git remote'
alias gst='git status'
alias glum='git pull upstream $(git_main_branch)'

# git personal
alias gpom='git push origin master'
alias gpoma='git push origin main'

# apple / macOs
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias bbedit='open -a /Applications/BBEdit.app/'
alias textmate='open -a /Applications/TextMate.app'

# zsh
alias zshconfig='sublime ~/.zshrc'
alias ohmyzsh='sublime ~/.oh-my-zsh'

function lsofport() {
	lsof -n -i4TCP:$1 | grep LISTEN
}
alias alias lsport=lsofport

