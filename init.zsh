# make sure the location of the extensions is known
if [ ! -n $ZSHDIR ]; then
  echo "Must define the ZSHDIR environment variable! This variable should list the directory where your oh-my-zsh and zsh-syntax-highlighting clones reside."
  exit
fi

plugin=(
        # give info when it's relevant
        git

        # vi-like editing of the command line
        vi-mode

        # search my history based on what I've typed when pressing up or down arrows
        zsh-history-substring-search
       )

zle -N history-substring-search-up
zle -N history-substring-search-down
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey -M vicmd "k" history-substring-search-up
bindkey -M vicmd "j" history-substring-search-down

