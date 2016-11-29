# make sure the location of the extensions is known
if [ ! -n $ZSHDIR ]; then
  export ZSHDIR="TODO: Enter the location of this repository here!"
fi

# vim is the best
export EDITOR="vim"

# enable vimlike keybindings
bindkey -v

# lower the delay for mutliple key presses
export KEYTIMEOUT=1

# load awesome extensions
source $ZSHDIR/oh-my-zsh/templates/zshrc.zsh-template
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

