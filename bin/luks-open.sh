#! /bin/sh
#
# luks-open.sh
# Copyright (C) 2017 Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the LGPL-3.0+ license.
#


cryptsetup open --type luks /home/paul/data/encrypted.raw encrypted
mount /dev/mapper/encrypted ~/encrypted

