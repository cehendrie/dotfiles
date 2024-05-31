# Directories that must be at the beginning of the PATH variable
# need to be defined at the beginning of the ~/.zshrc config file

# Datasite
export CONFIG_REPO_PATH=file:///Users/Chad.Hendrie/dev/repos/github.com/cehendrie/ds1-configurations
export SPRING_PROFILES_ACTIVE=urls,events,dev,local,native
export ACTIVE_PCF_ENVIRONMENT=devg
export TARGET_DOMAIN=apps.us2.devg.foundry.mrll.com
export API_URL=http://localhost:8081

# sbin
export PATH="/usr/local/sbin:$PATH"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
path+=("$JAVA_HOME/bin")

# MongoDB
export PATH="/usr/local/opt/mongodb-community@6.0/bin:$PATH"

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Rabbit
path+=/usr/local/opt/rabbitmq/sbin

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec
path+=("$GROOVY_HOME/bin")
