#! /bin/sh
#
# monitors.sh
# Copyright (C) 2017 Fabian Ising <fabian@murgi.de>
#
# Distributed under terms of the Apache v2.0 license.
#

# Get out of town if something errors
set -e

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status )  
DP_STATUS=$(</sys/class/drm/card0/card0-DP-1/status )  


echo "Rule run" >> /tmp/udev_test

if [ "connected" == "$HDMI_STATUS" ]; then  
    xrandr >> /tmp/udev_test
    /usr/bin/xrandr --output eDP-1 --auto --left-of HDMI-1
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
    echo "HDMI connected" >> /tmp/udev_test
    xrandr >> /tmp/udev_test
else  
    /usr/bin/xrandr --output HDMI-1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    echo "HDMI disconnected" >> /tmp/udev_test
fi

if [ "connected" == "$DP_STATUS" ]; then  
    xrandr >> /tmp/udev_test
    /usr/bin/xrandr --output eDP-1 --auto --right-of DP-1
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
    echo "DP connected" >> /tmp/udev_test
    xrandr >> /tmp/udev_test
else  
    /usr/bin/xrandr --output DP-1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    echo "DP disconnected" >> /tmp/udev_test
    exit
fi
