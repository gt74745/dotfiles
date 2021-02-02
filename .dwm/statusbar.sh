#!/bin/sh

BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
CPU=$(cat /sys/class/hwmon/hwmon4/temp1_input | cut -c 1-2)
DATE=$(date +%b\ %d\ %H:%M)
NETWORK=$(iwgetid -r)
AUDIO=$(amixer get Master | awk 'NR==6 {print $5}' | sed 's/\[//;s/\]//;s/%//')
MUTE=$(amixer get Master | awk 'NR==6 {print $6}' | sed 's/\[//;s/\]//;s/%//')

echo "[  $DATE ]"

