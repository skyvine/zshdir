# solarized colors
base0=244
base00=241
base01=240
base02=235
base03=234
base1=245
base2=254
base3=230
blue=33
cyan=37
green=64
magenta=125
orange=166
red=160
violet=61
yellow=136

# theme based on tjkirch from oh-my-zsh

ZSH_THEME_ATTENTION_COLOR=$red

ZSH_THEME_GIT_PREFIX_COLOR=$yellow
ZSH_THEME_GIT_PROMPT_PREFIX=" %{%F{$ZSH_THEME_GIT_PREFIX_COLOR}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[$ZSH_THEME_ATTENTION_COLOR]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[$ZSH_THEME_ATTENTION_COLOR]%}#%{$reset_color%}"; else echo λ; fi
}

ZSH_THEME_USERNAME_COLOR=$orange
ZSH_THEME_HOSTNAME_COLOR=$yellow
ZSH_THEME_TIME_COLOR=$blue
ZSH_THEME_PATH_COLOR=$base1

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
%{%F{$ZSH_THEME_USERNAME_COLOR}%}%n%{$reset_color%}@%{%F{$ZSH_THEME_HOSTNAME_COLOR}%}%m%{$reset_color%}: %{%F{$ZSH_THEME_PATH_COLOR}%}%2c%{$reset_color%}$(git_prompt_info)
%_$(prompt_char) '

RPROMPT='%{%F{$ZSH_THEME_TIME_COLOR}%}[%*]%{$reset_color%}'

