function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/v}/(main|viins)/}"
}

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function current_path_info() {
    if [[ ! $(collapse_pwd) = "~" ]]; then
        echo "%f%F{blue} {%f%F{yellow}%~%F{blue}}%f"
    fi
}

funcert theme_user() {
  if [ "$KEYMAP" = "vicmd" ]; then
    echo "$terminfo[bold]%F{blue}%n$reset_color"
  else
    echo "%F{green}%n"
  fi
}

if [ -z "$THEME_HIDE_HOSTNAME" ]; then
    host=%f%F{blue}@%f%F{yellow}%m%f
else
    host=
fi


PROMPT='$(theme_user)${host}$(current_path_info) %F{blue}[%f '
# PROMPT='%F{yellow}%n%F{blue} {%f%b%F{green}%2c%F{blue}} [%f '
RPROMPT='$(git_prompt_info) %F{blue}] %F{green}%D{%H:%M}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
