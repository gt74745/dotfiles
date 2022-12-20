#!/bin/sh

DATE=$(date);
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity);
MEM=$(free -h | grep Mem | awk '{print $3}');
TEMP=$(cat /sys/class/hwmon/hwmon4/temp1_input | cut -c 1-2);
CPU=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}' | cut -c 1-4)
NETWORK=$(sudo iwgetid -r);
AUDIO=$(pamixer --get-volume);
KERNEL=$(uname -r);
PKGS_=$(dpkg -l | wc -l);
PKGS=$(($PKGS_-5));
ROOT=$(df | grep sda3 | awk '{print $5}');
HOME=$(df | grep sda4 | awk '{print $5}');

xsetroot -name " ^c#a89984^[ VER : $KERNEL ]^c#b16286^[ PKG : $PKGS ]^c#83a598^[ VOL : $AUDIO% ]^c#fabd2f^[ BAT : $BATTERY% ]^c#458588^[ ROOT : $ROOT ][ HOME : $HOME ]^c#8ec07c^[ MEM : $MEM ]^c#fe8019^[ CPU : $CPU% ]^c#fb4934^[ TEMP : $TEMP°C ]^c#98971a^[ NET : $NETWORK ]^c#eeeeee^[ $DATE ] ";
