#! /bin/sh
#
# keylayout.sh
# Copyright (C) 2017 Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the Apache 2.0 license.
#

CURRENT_LANG=$(setxkbmap -query | grep "layout" | cut -f6 -d ' ')

if [ "$CURRENT_LANG" = "gb" ]
then
    setxkbmap de
else
    setxkbmap gb -variant umlauts
fi

