# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export THEME_HIDE_HOSTNAME="y"
ZSH_THEME="schaeferpp"
# ZSH_THEME="kardan"
# ZSH_THEME="mh"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# https://github.com/jocelynmallon/zshmarks
plugins=(git tmuxinator go zshmarks ssh-agent)


# User configuration

export GOPATH=/home/paul/go
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/paul/.bin:/home/paul/.gem/ruby/2.3.0/bin:/home/paul/.local/bin/:$GOPATH/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export EDITOR='nvim'
export GIT_EDITOR="$EDITOR"
# export TERM=xterm-256color

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

function silent {
  $* 1>&2 2>/dev/null
}

function silentbg {

  $* &> /dev/null &
}

alias pse="pacaur -Ss "
alias pin="pacaur -S "
alias mknote="~/code/projects/mkp/mkp.py --note"
alias mkp="~/code/projects/mkp/mkp.py"
alias tmux="tmux -2"

# if [[ ! $TERM =~ screen ]]; then
    # exec tmux -2
# fi
#
if [[ -z $STARTSCREEN ]]; then
  # exec ~/projects/startshell/startshell
fi

if [[ -e /usr/bin/src-hilite-lesspipe.sh ]]; then
    export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
    export LESS=' -R'
fi

setopt APPEND_HISTORY

bindkey '^P' up-history
bindkey '^N' down-history
# bindkey '^?' backward-delete-char
bindkey '^r' history-incremental-search-backward

bindkey "^[l" forward-word
bindkey "^[h" backward-word

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    # RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1


alias publish="curl -F 'f:1=<-' ix.io"
alias vim=nvim
alias vi=nvim

# bookmark plugin
alias g="jump"
alias p="showmarks"
alias sav="bookmark"


# source /usr/share/doc/find-the-command/ftc.zsh

. /etc/profile.d/vte.sh

date
echo
