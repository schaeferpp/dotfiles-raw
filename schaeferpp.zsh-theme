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

# export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:*.patch=00;34:*.o=00;32:*.so=01;35:*.ko=01;31:*.la=00;33'
