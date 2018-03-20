export LOADED_PERSONAL_PROFILE_DOT_ZSH
export PATH="$HOME/storage/projects/seal-directory:$PATH"
# advertise 256 color if we have it
[[ $COLORTERM = gnome-terminal && ! $TERM = screen-256color ]] && export TERM=xterm-256color

# neovim is the best
export EDITOR="nvim"

# lower the delay for mutliple key presses
export KEYTIMEOUT=1

# get rid of annoying GUI prompts that distros like to set by default
export SSH_ASKPASS=

