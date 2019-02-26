#! /bin/sh
#
# get_systemconfig.sh
# Copyright (C) 2019 Paul Schaefer <paul@os-s.de>
#
# Distributed under terms of the LGPL-3.0+ license.
#


hostname=$(hostname)

hostname_work="paul"
hostname_home="tuxedo"


if [[ $hostname == $hostname_home ]]; then
    function polybar_interface() {
        echo "interface = eth0 ; <--(polybar_interface)-->"
    }
elif [[ $hostname == $hostname_work ]]; then
    function polybar_interface() {
        echo "interface = enp3s0 ; <--(polybar_interface)-->"
    }
fi

function usage() {
    echo "$0 [apply|revert] filename" >&2
    exit 1
}

# notify-send "$0"
# notify-send "$1"

if [[ $# < 1 ]]; then
    usage
fi


if [[ $1 == "apply" ]]; then
    sed "s/.*<--(polybar_interface)-->.*$/$(polybar_interface)/g"
elif [[ $1 == "revert" ]]; then
    sed "s/.*<--(polybar_interface)-->.*$/<--(polybar_interface)-->/g"
else
    usage
fi

