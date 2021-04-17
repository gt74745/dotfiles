#!/bin/sh

BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
CPU=$(cat /sys/class/hwmon/hwmon4/temp1_input | cut -c 1-2)
DATE=$(date +%b\ %d\ %H:%M)
NETWORK=$(iwgetid -r)
AUDIO=$(pamixer --get-volume)

echo "^c#458588^[  $AUDIO% ]^c#fabd2f^[  $BATTERY% ]^c#fb4934^[  $CPU°C ]^c#98971a^[  $NETWORK ]^c#ffffff^[  $DATE ]"

