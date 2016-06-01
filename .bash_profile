export PATH=$HOME/bin:$PATH

## loading bashrc everytime bash_profile is called ##
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# OPAM configuration
. /Users/SeungHeeHan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export NVM_DIR="/Users/SeungHeeHan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
