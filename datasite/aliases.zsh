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
alias ll='exa -lag'
alias ll.='exa -ld .*'
alias lt='exa -T'
alias ltd='exa -TD'

alias h='fc -l 0'
alias cat=bat
alias vi=nvim
alias gitm='cd ~/dev/projects/github.com/cehendrie/'
alias devd='cd ~/dev/repos/github.com/cehendrie/'

# make sure neovim is exported as the editor
export EDITOR="nvim"

# git
alias gpom='git push origin master'
alias gpoma='git push origin main'
alias gpomn='git push origin main'

# redaction projects
alias red='cd ~/dev/repos/github.com/cehendrie/redaction-service'
alias redh='cd ~/dev/repos/github.com/cehendrie/redaction-highlights-service'
alias redi='cd ~/dev/repos/github.com/cehendrie/redaction-index-service'
alias redil='cd ~/dev/repos/github.com/cehendrie/redaction-index-large-service'
alias redr='cd ~/dev/repos/github.com/cehendrie/redaction-redact-service'
alias reds='cd ~/dev/repos/github.com/cehendrie/redaction-search-service'
alias redc='cd ~/dev/repos/github.com/cehendrie/redaction-common'
alias redcp='cd ~/dev/repos/github.com/cehendrie/redaction-common-processing'
alias redct='cd ~/dev/repos/github.com/cehendrie/redaction-common-test'
alias redltt='cd ~/dev/repos/github.com/cehendrie/redaction-load-test-tool'
alias reddr='cd ~/dev/repos/github.com/cehendrie/doc-reprocessing-service'
alias redgm='cd ~/dev/repos/github.com/cehendrie/redaction-grid-mfe'
alias drs='cd ~/dev/repos/github.com/cehendrie/doc-reprocessing-service'
alias docr='cd ~/dev/repos/github.com/cehendrie/doc-reprocessing-service'

# smart tools projects
alias sts='cd ~/dev/repos/github.com/cehendrie/smart-tools-service'
alias ste='cd ~/dev/repos/github.com/cehendrie/smart-tools-events-service'
alias stfl='cd ~/dev/repos/github.com/cehendrie/smart-tools-folder-labels-service'
alias stt='cd ~/dev/repos/github.com/cehendrie/smart-tools-tracker-service'
alias stc='cd ~/dev/repos/github.com/cehendrie/smart-tools-common'
alias stct='cd ~/dev/repos/github.com/cehendrie/smart-tools-common-test'
alias aicm='cd ~/dev/repos/github.com/cehendrie/ai-checklist-mapper-service'
alias aisc='cd ~/dev/repos/github.com/cehendrie/ai-smart-categorization-service'
alias aiscu='cd ~/dev/repos/github.com/cehendrie/ai-smart-categorization-utils'
alias tli='cd ~/dev/repos/github.com/cehendrie/task-list-import-service'

# core diligence
alias dildm='cd ~/dev/repos/github.com/cehendrie/doc-metadata-service'
alias dilpw='cd ~/dev/repos/github.com/cehendrie/processing-workflow-service'
alias dildl='cd ~/dev/repos/github.com/cehendrie/doc-language-service'
alias ddm='cd ~/dev/repos/github.com/cehendrie/doc-metadata-service'
alias dpw='cd ~/dev/repos/github.com/cehendrie/processing-workflow-service'
alias ddl='cd ~/dev/repos/github.com/cehendrie/doc-language-service'

# personal projects
alias dot 'cd ~/dev/darkportal/repos/github.com/cehendrie/dotfiles'

# datasite
alias dsconf='cd ~/dev/repos/github.com/cehendrie/ds1-configurations'
alias dsmanif='cd ~/dev/repos/github.com/cehendrie/datasite-k8s-manifests'

# apple / macOs
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias textmate='open -a /Applications/TextMate.app/'
alias bbedit='open -a /Applications/BBEdit.app/'

# zsh
alias zshconfig='textmate ~/.zshrc'
alias ohmyzsh='textmate ~/.oh-my-zsh'

function lsofport() {
	lsof -n -i4TCP:$1 | grep LISTEN
}
alias lsport=lsofport

function gbdaall() {
  cd /Users/Chad.Hendrie/dev/repos/github.com/cehendrie/
  for f in *; do
      if [ -d "$f" ]; then
          echo "> cleaning old branches from $f"
          cd $f
          gbda
          cd ../
      fi
  done
}
alias gbdaa=gbdaall
