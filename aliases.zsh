# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
alias ll.='ls -ld .*'
alias h='fc -l 0'
alias el='exa -la'

alias vi=vim
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias textmate='open -a /Applications/TextMate.app/'

alias zshconfig='sublime ~/.zshrc'
alias ohmyzsh='sublime ~/.oh-my-zsh'

alias gpom='git push origin master'

# datasite projects
alias gitd='cd ~/dev/projects/github.devtools.merrillcorp.com/chendri/'
alias gitm='cd ~/dev/projects/github.com/cehendrie/'
alias red='cd ~/dev/projects/github.com/cehendrie/redaction-service'
alias redp='cd ~/dev/projects/github.com/cehendrie/redaction-processing-service'
alias redpl='cd ~/dev/projects/github.com/cehendrie/redaction-processing-service-large'
alias reds='cd ~/dev/projects/github.com/cehendrie/redaction-search-service'
alias redb='cd ~/dev/projects/github.com/cehendrie/redaction-batch-processing-service'
alias redc='cd ~/dev/projects/github.com/cehendrie/javelin-common-redaction'
alias redpc='cd ~/dev/projects/github.com/cehendrie/javelin-common-redaction-processing'
alias redt='cd ~/dev/projects/github.com/cehendrie/redaction-common-test'

# deprecated datasite projects
alias redts='cd ~/dev/projects/github.com/cehendrie/redacted-terms-search-service'

# Apple / OS X Specfic

# https://lucasfcosta.com/2019/02/10/terminal-guide-2019.html
# https://github.com/lucasfcosta/dotfiles/blob/c01b73c6bd71b4888cae31440e14bf42297b3455/.aliases

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
