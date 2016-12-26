# make sure the location of the extensions is known
if [ ! -n $ZSHDIR ]; then
  export ZSHDIR="TODO: Enter the location of this repository here!"
fi

# vim is the best
export EDITOR="nvim"

# enable vimlike keybindings
bindkey -v

# lower the delay for mutliple key presses
export KEYTIMEOUT=1

# load awesome extensions
source $ZSHDIR/oh-my-zsh/templates/zshrc.zsh-template
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# this allows aliases to be available under sudo
alias sudo='sudo '

# make tmux use 256 colors
alias tmux='tmux -2'

# make it so tmxu is accessible even without 256 color support
alias tmux-8color='tmux'

export CFLAGS="-Wall -Wextra"
export CXXFLAGS="-Wall -Wextra"

