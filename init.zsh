# set oh-my-zsh variables
export ZSHDIR=$(realpath $(dirname $0))
export ZSH=$ZSHDIR/oh-my-zsh
export ZSH_CUSTOM=$ZSHDIR/custom
export ZSH_THEME="saffronsnail"

if [ -n LOADED_PERSONAL_PROFILE_DOT_ZSH ]; then
  source $ZSHDIR/profile.zsh
fi

plugin=(
        # give info when it's relevant
        git

        # vi-like editing of the command line
        vi-mode

        # search my history based on what I've typed when pressing up or down arrows
        zsh-history-substring-search
        zsh-syntax-highlighting
       )

source $ZSH/oh-my-zsh.sh

zle -N history-substring-search-up
zle -N history-substring-search-down
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey -M vicmd "k" history-substring-search-up
bindkey -M vicmd "j" history-substring-search-down

