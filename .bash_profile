export PATH=$HOME/bin:$PATH

## loading bashrc everytime bash_profile is called ##
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi
