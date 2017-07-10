#! /bin/sh
#
# install.sh
# Copyright (C) 2017 Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the Apache 2.0 license.
#

function check_program() {
    type "$1" >/dev/null 2>&1 || { echo >&2 "Please install $1"; exit 1; }
}

function  install_file() {
    mkdir -p $(dirname "$2")
    echo -en "\033[1;32m"
    echo -en Installing "$2... \033[1;31m"

    ln -s "$1" "$2"

    echo -e "\033[0m"
}

echo "Starting..."

check_program git
check_program zsh
check_program curl

echo "Checking Programs ready"

if [ ! -d ~/.oh-my-zsh ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

install_file ${PWD}/gitconfig ~/.gitconfig
install_file ${PWD}/zshrc ~/.zshrc
install_file ${PWD}/tmux.conf ~/.tmux.conf
install_file ${PWD}/tmuxline ~/.tmux.conf.tmuxline
install_file ${PWD}/schaeferpp.zsh-theme ~/.oh-my-zsh/themes/schaeferpp.zsh-theme

install_file ${PWD}/config/i3 ~/.config
install_file ${PWD}/config/polybar ~/.config
install_file ${PWD}/config/termite ~/.config

install_file ${PWD}/font/opentype/ ~/.local/share/fonts/opentype
install_file ${PWD}/font/ttf/ ~/.local/share/fonts/truetype

# Vim is Submodule
git submodule init
git submodule update

install_file ${PWD}/vim/vim ~/.vim
install_file ${PWD}/vim/vim  ~/.config/nvim
install_file ${PWD}/vim/vimrc ~/.vimrc
install_file ${PWD}/vim/vimrc ~/.config/nvim/init.vim


vim +PlugInstall +qall



