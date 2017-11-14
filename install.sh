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

# Config files directly in $HOME
install_file ${PWD}/gitconfig ~/.gitconfig
install_file ${PWD}/zshrc ~/.zshrc
install_file ${PWD}/tmux.conf ~/.tmux.conf
install_file ${PWD}/tmuxline ~/.tmux.conf.tmuxline
install_file ${PWD}/schaeferpp.zsh-theme ~/.oh-my-zsh/themes/schaeferpp.zsh-theme

# ~/.config directory
install_file ${PWD}/config/mimeapps.list ~/.config/mimeapps.list
install_file ${PWD}/config/i3 ~/.config
install_file ${PWD}/config/rofi ~/.config
install_file ${PWD}/config/polybar ~/.config
install_file ${PWD}/config/termite ~/.config

# Fonts in ~/.local/share/fonts
install_file ${PWD}/font/opentype/ ~/.local/share/fonts/opentype
install_file ${PWD}/font/ttf/ ~/.local/share/fonts/truetype

# (N)Vim
install_file ${PWD}/vim  ~/.config/nvim
install_file ${PWD}/vim ~/.vim
install_file ${PWD}/vim/init.vim ~/.vimrc


check_program nvim
check_program vim

nvim +PlugInstall +qall
vim +PlugInstall +qall



