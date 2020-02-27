#! /bin/sh
#
# random-wallpaper.sh
# Copyright (C) 2017 Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the Apache 2.0 license.
#

DISPLAY=:0 sudo -u paul feh --recursive --randomize --bg-fill "$1"
