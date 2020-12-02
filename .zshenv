# Directories that must be at the beginning of the PATH variable
# need to be defined at the beginning of the ~/.zshrc config file

# path+=('/usr/local/bin')
# path+=('/usr/local/opt/openjdk@11/bin')
# path+=('/usr/local/opt/python@3.9/bin')

path+=$HOME/bin
path+=$HOME/dev/bin

export GRADLE_HOME=/usr/local/bin/gradle
path+=("$GRADLE_HOME/bin")

path+=/usr/local/opt/rabbitmq/sbin
