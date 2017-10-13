## bash setup ##
export PS1="seung🐶  \[$(tput sgr0)\]\[\033[38;5;157m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"

## z install ##
. $HOME/bin/.z.sh

## aliases and functions ##
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# OPAM configuration
. /Users/SeungHeeHan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export NVM_DIR="/Users/SeungHeeHan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# setting \C-; as clear screen
# in iterm set keymapping to send escape sequence
# in this case \C-; to \[[59;6u
bind '"[[59;6u": "\C-xS"'
bind -x '"\C-xS": clear'
