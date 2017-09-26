export PATH="$HOME/projects/seal-directory:$PATH"
# advertise 256 color if we have it
[[ $COLORTERM = gnome-terminal && ! $TERM = screen-256color ]] && export TERM=xterm-256color

export NIX_PATH="saffpkgs=/usr/pkgs:$NIX_PATH"

# neovim is the best
export EDITOR="nvim"

# lower the delay for mutliple key presses
export KEYTIMEOUT=1

# set oh-my-zsh variables
export ZSHDIR="$HOME/.dotdirs/zsh"
export ZSH=$ZSHDIR/oh-my-zsh
export ZSH_CUSTOM=$ZSHDIR/custom
export ZSH_THEME="saffronsnail"

# get rid of annoying GUI prompts that distros like to set by default
export SSH_ASKPASS=

