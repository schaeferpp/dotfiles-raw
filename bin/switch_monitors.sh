#! /bin/sh
#
# switch_monitors.sh
# Copyright (C) 2017 Fabian Ising <fabian@murgi.de>
#                    Paul Schaefer <schaefer.pp@gmail.com>
#
# Distributed under terms of the Apache v2.0 license.
#

# Get info on the monitors
HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status )
HDMI_ENABLED=$(</sys/class/drm/card0/card0-HDMI-A-1/enabled)

VGA_STATUS=$(</sys/class/drm/card0-VGA-1/status )
VGA_ENABLED=$(</sys/class/drm/card0-VGA-1/enabled )

DP_STATUS=$(</sys/class/drm/card0/card0-DP-1/status )
DP_ENABLED=$(</sys/class/drm/card0/card0-DP-1/enabled )

# Check to see if our state log exists
if [ ! -f /tmp/monitor ]; then
    touch /tmp/monitor
    STATE=2
else
    STATE=$(</tmp/monitor)
fi

function mirror() {
    if [ "connected" == "$HDMI_STATUS" ]; then
        if [ "connected" == "$VGA_STATUS" ]; then
            /usr/bin/xrandr --output eDP-1 --auto \
                --output HDMI-1 --auto --same-as eDP-1 \
                --output VGA-1 --auto --same-as HDMI-1
        else
            /usr/bin/xrandr --output eDP-1 --auto \
                --output HDMI-1 --auto --same-as eDP-1
        fi
    elif [ "connected" == "$VGA_STATUS" ]; then
        /usr/bin/xrandr --output eDP-1 --auto \
            --output VGA-1 --auto --same-as eDP-1
    else
        /usr/bin/xrandr --output eDP-1 --auto --output VGA-1 --off --output HDMI-1 --off
    fi
}
function extend() {
    if [ "connected" == "$HDMI_STATUS" ]; then
        if [ "connected" == "$VGA_STATUS" ]; then
            /usr/bin/xrandr --output eDP-1 --auto \
                --output HDMI-1 --auto --right-of eDP-1 \
                --output VGA-1 --auto --right-of HDMI-1
        else
            /usr/bin/xrandr --output eDP-1 --auto \
                --output HDMI-1 --auto --right-of eDP-1
        fi
    elif [ "connected" == "$VGA_STATUS" ]; then
        /usr/bin/xrandr --output eDP-1 --auto \
            --output VGA-1 --auto --right-of eDP-1
    else
        /usr/bin/xrandr --output eDP-1 --auto --output VGA-1 --off --output HDMI-1 --off
    fi
}

# If monitors are disconnected, stay in state 1
if [ "disconnected" == "$HDMI_STATUS" -a "disconnected" == "$VGA_STATUS" ]; then
    STATE=5
fi
TYPE="eDP-1"
case $STATE in
    1)
        # Enable STATE 2, Mirroring
        mirror
        STATE=2
        /usr/bin/notify-send -t 5000 --urgency=low "Graphics Update" "Mirroring"
        ;;
    2) # Enable STATE 1, Extending
        # eDP-1 is on, projectors are connected but inactive
        extend
        STATE=1
        /usr/bin/notify-send -t 5000 --urgency=low "Graphics Update" "Extending"
        ;;
    *)
        # Unknown state, assume we're in 1
        STATE=1
esac

echo $STATE > /tmp/monitor
