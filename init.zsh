# make sure the location of the extensions is known
if [ ! -n $ZSHDIR ]; then
  echo "Must define the ZSHDIR environment variable! This variable should list the directory where your oh-my-zsh and zsh-syntax-highlighting clones reside."
  exit
fi

# neovim is the best
export EDITOR="nvim"

plugin=(vi-mode)

# lower the delay for mutliple key presses
export KEYTIMEOUT=1

# set oh-my-zsh variables
export ZSH=$ZSHDIR/oh-my-zsh
export ZSH_CUSTOM=$ZSHDIR/custom
export ZSH_THEME="saffronsnail"

# load awesome extensions
source $ZSHDIR/oh-my-zsh/templates/zshrc.zsh-template
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# this allows aliases to be available under sudo
alias sudo='sudo '

# make tmux use 256 colors
alias tmux='tmux -2'

# make it so tmux is accessible even without 256 color support
alias tmux-8color='tmux'

export CFLAGS="-Wall -Wextra"
export CXXFLAGS="-Wall -Wextra"

# enable vimlike keybindings
bindkey -v

# search history when using arrows
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

[[ -n "${key[Up]}" ]] && bindkey "${key[Up]}" up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" down-line-or-beginning-search

# advertise 256 color if we have it
[[ $COLORTERM = gnome-terminal && ! $TERM = screen-256color ]] && TERM=xterm-256color
export TERM

