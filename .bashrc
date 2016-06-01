## bash setup ##
export PS1="seung🐶  \[$(tput sgr0)\]\[\033[38;5;157m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"

## z install ##
. $HOME/bin/z.sh

## aliases and functions ##
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -l -a'
alias gs='git status'
alias ga='git add'
alias gc='git ci'
alias gb='git br'
mkcd() { mkdir "$@" && cd "$_"; }

export NVM_DIR="/Users/SeungHeeHan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias tmux="TERM=screen-256color-bce tmux"

bind -x '"\C-p": clear'
