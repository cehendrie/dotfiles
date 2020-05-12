# ~/.bash_profile
#
# http://mywiki.wooledge.org/DotFiles
# http://stackoverflow.com/questions/902946/about-bash-profile-bashrc-and-where-should-alias-be-written-in
# http://www.hypexr.org/bash_tutorial.php
# http://hackercodex.com/guide/mac-osx-mavericks-10.9-configuration/

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# terminal color output
# http://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# java configuration
#export JAVA_HOME=/Library/Java/JavaVirtualMachine/jdk1.7.0_45.jdk/Contents/Home
#export JAVA_HOME=/Users/chendrie/Development/lib/java_ee_sdk-7-jdk7-macosx-64/jdk7
# https://www.mkyong.com/java/how-to-set-java_home-environment-variable-on-mac-os-x/
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH

export GRADLE_HOME=/usr/local/bin/gradle
PATH=$PATH:$GRADLE_HOME/bin

# ant configuration
export ANT_HOME="/Users/chendrie/Development/lib/apache-ant-1.8.2"
export ANT_OPTS="-Xms512m -Xmx2g"

# grails configuration
export GROOVY_HOME=/Users/chendrie/Development/lib/groovy-1.8.6
export GRAILS_HOME=/Users/chendrie/Development/lib/grails-1.3.7

PATH=$PATH:$GROOVY_HOME/bin
PATH=$PATH:$GRAILS_HOME/bin

# appengine configuration
#export APPENGINE_HOME=/Users/chendrie/Development/lib/appengine-java-sdk-1.6.0

# local configuration
PATH=$PATH:/Users/chendrie/Development/bin

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/System/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PATH

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
