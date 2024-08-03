#!/bin/sh

DATE=$(date +%a\ %b\ %d\ %H:%M:%S);
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity);
MEM=$(free -h | grep Mem | awk '{print $3}');
TEMP=$(cat /sys/class/hwmon/hwmon1/temp1_input | cut -c 1-2);
CPUALLOLD=$(head -n1 /proc/stat | awk '{usage=($2+$4+$5)} END {print usage}');
CPUUSEOLD=$(head -n1 /proc/stat | awk '{usage=($2+$4)} END {print usage}');
CPUALLNEW=$(head -n1 /proc/stat | awk '{usage=($2+$4+$5)} END {print usage}');
CPUUSENEW=$(head -n1 /proc/stat | awk '{usage=($2+$4)} END {print usage}');
CPU=$((($CPUUSENEW - $CPUUSEOLD) * 100) / ($CPUALLNEW - $CPUALLOLD));
NETWORK=$(iwgetid -r);
AUDIO=$(pamixer --get-volume);
KERNEL=$(uname -r);
PKGS=$(pacman -Q | wc -l);
ROOT=$(df | grep p3 | awk '{print $5}');

xsetroot -name " ^c#83a598^[ VOL : $AUDIO% ]^c#fabd2f^[ BAT : $BATTERY% ]^c#458588^[ ROOT : $ROOT ]^c#8ec07c^[ MEM : $MEM ]^c#fb4934^[ TEMP : $TEMP°C ]^c#98971a^[ NET : $NETWORK ]^c#eeeeee^[ $DATE ] ";
