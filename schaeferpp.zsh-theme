function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function current_path_info() {

    if [[ ! $(collapse_pwd) = "~" ]]; then
        echo "%f$FG[033] {%f$FG[161]$(collapse_pwd)%f$FG[033]}%f"
    fi
}

user=$FG[154]%n
if [ -z "$THEME_HIDE_HOSTNAME" ]; then
    host=%f$FG[033]@%f%F{yellow}%m%f
else
    host=
fi


PROMPT='${user}${host}$(current_path_info) $FG[033][%f '
RPROMPT='$FG[033]$(git_prompt_info) $FG[033]] $FG[154]%D{%H:%M}%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
