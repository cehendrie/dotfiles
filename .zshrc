# Spaceship
source /opt/homebrew/opt/spaceship/spaceship.zsh

# Aliases
source /Users/chendrie/dev/repos/github.com/cehendrie/dotfiles/aliases.zsh

# Plugins
source /Users/chendrie/dev/repos/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /Users/chendrie/dev/repos/github.com/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# turn off shared history across zsh sessions (e.g. terminal tabs or windows)
# https://github.com/robbyrussell/oh-my-zsh/issues/2537
unsetopt share_history
setopt no_share_history

# Fix numeric keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[On" "."
bindkey -s "^[OM" "^M"
# 1 - 9
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * / =
bindkey -s "^[Ol" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"
bindkey -s "^[OX" "="

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
