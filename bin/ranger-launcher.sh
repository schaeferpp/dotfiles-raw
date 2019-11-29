#! /bin/sh
#
# ranger-launcher.sh
# Copyright (C) 2018 Paul Schaefer <paul@os-s.de>
#
# Distributed under terms of the LGPL-3.0+ license.
#

export RANGERCD="true"
termite -e tmux
echo $RANGERCD

