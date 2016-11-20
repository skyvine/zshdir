if [ ! -n $ZSHDIR ]; then
  export ZSHDIR="TODO: Enter the location of this repository here!"
fi

export EDITOR="vim"
bindkey -v
export KEYTIMEOUT=1

source $ZSHDIR/oh-my-zsh/templates/zshrc.zsh-template
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

