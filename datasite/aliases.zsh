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

# make sure neovim is exported as the editor
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
# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}

# Check if main exists and use instead of master
function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return
    fi
  done
  echo master
}

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcb='git checkout -b'
alias gcm='git checkout $(git_main_branch)'
alias gco='git checkout'
alias gd='git diff'
alias gd='git diff'
alias glg='git log --stat'
alias glp="_git_log_prettily"
alias gr='git remote'
alias gra='git remote add'
alias gst='git status'
alias gstl='git stash list'
alias glum='git pull upstream $(git_main_branch)'
# alias glum='git pull upstream master'
alias gluma='git pull upstream main'
alias glom='git pull origin master'
alias gloma='git pull origin main'

# git personal
# alias gpom='git push origin master'
alias gpom='git push origin $(git_main_branch)'
alias gpoma='git push origin main'

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

# core diligence / graphite projects
alias cddm='cd ~/dev/repos/github.com/cehendrie/doc-metadata-service'
alias cdmc='cd ~/dev/repos/github.com/cehendrie/metadata-composite-service'
alias cdpw='cd ~/dev/repos/github.com/cehendrie/processing-workflow-service'
alias cddl='cd ~/dev/repos/github.com/cehendrie/doc-language-service'
alias gdm='cd ~/dev/repos/github.com/cehendrie/doc-metadata-service'
alias gmc='cd ~/dev/repos/github.com/cehendrie/metadata-composite-service'
alias gpw='cd ~/dev/repos/github.com/cehendrie/processing-workflow-service'
alias gdl='cd ~/dev/repos/github.com/cehendrie/doc-language-service'

# doc processing projects
# alias dpdc='cd ~/dev/repos/github.com/cehendrie/doc-conversion'
# alias dpdcp='cd ~/dev/repos/github.com/cehendrie/doc-conversion-pdftron-service'
# alias dpdct='cd ~/dev/repos/github.com/cehendrie/doc-conversion-txt-service'
# alias dpdx='cd ~/dev/repos/github.com/cehendrie/doc-xodconversion-service'
# alias dpdxl='cd ~/dev/repos/github.com/cehendrie/doc-xodconversionLF-service'
# alias dpdt='cd ~/dev/repos/github.com/cehendrie/doc-textextraction-service'
# alias dpdtl='cd ~/dev/repos/github.com/cehendrie/doc-textextractionLF-service'
# alias dpxc='cd ~/dev/repos/github.com/cehendrie/xodconversion-common'
# alias dppw='cd ~/dev/repos/github.com/cehendrie/processing-workflow-service'
# alias dpdl='cd ~/dev/repos/github.com/cehendrie/doc-language-service'
# alias dpdp='cd ~/dev/repos/github.com/cehendrie/doc-password-service'
alias dpdc='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion'
alias dpdcpt='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion-pdftron-service'
alias dpdcs='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion-pdftron-service'
alias dpdct='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion-txt-service'
alias dpdco='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion-office-service'
alias dpdcp='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion-pdf-service'
alias dpdcpp='cd ~/dev/repos/github.com/MerrillCorporation/doc-conversion-pps-poc-service'
alias dpdx='cd ~/dev/repos/github.com/MerrillCorporation/doc-xodconversion-service'
alias dpdxl='cd ~/dev/repos/github.com/MerrillCorporation/doc-xodconversionLF-service'
alias dpdt='cd ~/dev/repos/github.com/MerrillCorporation/doc-textextraction-service'
alias dpdtl='cd ~/dev/repos/github.com/MerrillCorporation/doc-textextractionLF-service'
alias dpxc='cd ~/dev/repos/github.com/MerrillCorporation/xodconversion-common'
alias dppw='cd ~/dev/repos/github.com/MerrillCorporation/processing-workflow-service'
alias dpdl='cd ~/dev/repos/github.com/MerrillCorporation/doc-language-service'
alias dpdp='cd ~/dev/repos/github.com/MerrillCorporation/doc-password-service'

# datasite projects
alias dsconf='cd ~/dev/repos/github.com/MerrillCorporation/ds1-configurations'
alias dkm='cd ~/dev/repos/github.com/MerrillCorporation/datasite-k8s-manifests'
alias configs='cd ~/dev/repos/github.com/MerrillCorporation/config-server'

# personal projects
alias dotf 'cd ~/dev/darkportal/repos/github.com/cehendrie/dotfiles'

# apple / macOs
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias textmate='open -a /Applications/TextMate.app/'
alias bbedit='open -a /Applications/BBEdit.app/'

# codium
function codium-dsconf() {
	codium ~/dev/repos/github.com/MerrillCorporation/ds1-configurations
}

# zsh
alias zshconfig='textmate ~/.zshrc'

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
