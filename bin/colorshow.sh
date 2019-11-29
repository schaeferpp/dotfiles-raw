#! /bin/sh
#
# colorshow.sh
# Copyright (C) 2017 Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the Apache 2.0 license.
#

for x in {0..8}; do 
    for i in {30..37}; do 
        for a in {40..47}; do 
            echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
        done
        echo
    done
done
echo ""
