#! /bin/sh
#
# free.sh
# Copyright (C) 2016 Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the Apache 2.0 license.
#

free -h | grep ^Mem: | awk -F " " '{ print "Mem: "  $3"/"$2 }'
