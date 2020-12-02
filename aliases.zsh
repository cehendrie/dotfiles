# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

# A modern replacement for ls
# https://the.exa.website

alias ls='exa'
alias ll='exa -la'
alias ll.='exa -ld .*'
alias lt='exa -T'
alias ltd='exa -TD'
alias h='fc -l 0'
alias cat=bat
alias vi=vim
alias gitm='cd ~/dev/projects/github.com/cehendrie/'
alias devd='cd ~/dev/projects/github.com/cehendrie/'
alias devb='cd ~/dev/repos/business/github.com/cehendrie/'
alias devp='cd ~/dev/repos/personal/github.com/cehendrie/'

# git
alias gpom='git push origin master'

# projects
alias red='cd ~/dev/projects/github.com/cehendrie/redaction-service'
alias redh='cd ~/dev/projects/github.com/cehendrie/redaction-highlights-service'
alias redp='cd ~/dev/projects/github.com/cehendrie/redaction-processing-service'
alias redpl='cd ~/dev/projects/github.com/cehendrie/redaction-processing-large-service'
alias reds='cd ~/dev/projects/github.com/cehendrie/redaction-search-service'
alias redbp='cd ~/dev/projects/github.com/cehendrie/redaction-batch-processing-service'
alias redc='cd ~/dev/projects/github.com/cehendrie/redaction-common'
alias redpc='cd ~/dev/projects/github.com/cehendrie/redaction-processing-common'
alias redct='cd ~/dev/projects/github.com/cehendrie/redaction-common-test'
alias reddr='cd ~/dev/repos/business/github.com/cehendrie/doc-reprocessing-service'
alias redltt='cd ~/dev/repos/business/github.com/cehendrie/redaction-load-test-tool'

# deprecated projects
alias redts='cd ~/dev/projects/github.com/cehendrie/redacted-terms-search-service'

# apple / macOs
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias textmate='open -a /Applications/TextMate.app/'
alias bbedit='open -a /Applications/BBEdit.app/'

# zsh
alias zshconfig='sublime ~/.zshrc'
alias ohmyzsh='sublime ~/.oh-my-zsh'

function lsofport() {
	lsof -n -i4TCP:$1 | grep LISTEN
}
alias alias lsport=lsofport
