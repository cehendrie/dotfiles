# ~/.bash_profile
#
# http://mywiki.wooledge.org/DotFiles
# http://stackoverflow.com/questions/902946/about-bash-profile-bashrc-and-where-should-alias-be-written-in
# http://www.hypexr.org/bash_tutorial.php
# http://hackercodex.com/guide/mac-osx-mavericks-10.9-configuration/

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Terminal color output
# http://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Java configuration
#export JAVA_HOME=/Library/Java/JavaVirtualMachine/jdk1.7.0_45.jdk/Contents/Home
#export JAVA_HOME=/Users/chendrie/Development/lib/java_ee_sdk-7-jdk7-macosx-64/jdk7
# https://www.mkyong.com/java/how-to-set-java_home-environment-variable-on-mac-os-x/
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH

export GRADLE_HOME=/usr/local/bin/gradle
PATH=$PATH:$GRADLE_HOME/bin

# Needed for Rabbit / Redis (?)
export PATH=$PATH:/usr/local/sbin

# Mongo DB runtime
export PATH="/usr/local/opt/mongodb@3.4/bin:$PATH"

# Local configuration
PATH=$PATH:/Users/chendri/dev/bin

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PATH

# https://spindance.com/enable-git-tab-completion-bash-mac-os-x/
# source /usr/local/etc/bash_completion.d/git-completion.bash

# Git branch bash completion
# https://gist.github.com/JuggoPop/10706934
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash

  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete gc _git_checkout
  __git_complete gcd _git_checkout
  __git_complete gcm _git_checkout
  __git_complete gst _git_status
  __git_complete gs _git_stash
  __git_complete gsl _git_stash
  __git_complete gb _git_branch
  __git_complete gr _git_remote
  __git_complete gl _git_log
  __git_complete ga _git_add
  __git_complete glud _git_pull
  __git_complete glum _git_pull
fi

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

