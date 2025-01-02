#!/bin/bash

# Get current hour in 24-hour format
current_hour=$(date +%H)
current_hour=${current_hour#0} # Remove leading zero if present

# Define color temperatures
NIGHT_TEMP=4000
DAY_TEMP=6500

# Check if current time is between 20:00 and 08:00
if [ "$current_hour" -ge 20 ] || [ "$current_hour" -lt 8 ]; then
    # Night time - warmer temperature
    hyprsunset -t $NIGHT_TEMP
else
    # Day time - normal temperature
    hyprsunset -t $DAY_TEMP
fi

# Add those to the hyprland.conf
#exec-once = $scrPath/hyprcolortoggle.sh # initial color temperature setting
#exec-once = while true; do sleep 3600 && $scrPath/hyprcolortoggle.sh; done & # check every hour