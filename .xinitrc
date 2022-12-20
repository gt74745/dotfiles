#!/bin/sh

#feh --bg-center /usr/share/backgrounds/Dune.jpg
setxkbmap -option compose:ralt
hsetroot -solid #000
urxvtd &											# Start terminal emulator daemon
picom --vsync &
#xsetroot -cursor_name left_ptr &					# Set correct cursor

export TRACKPOINT=$(xinput list --id-only "TPPS/2 IBM TrackPoint")
xinput --set-prop $TRACKPOINT "libinput Accel Speed" -0.5	# Lower input sensitivity on trackpoint

#export _JAVA_AWT_WM_NONREPARENTING=1				# Set Java env. variable so everything doesn't break
xrdb $HOME/.Xresources								# Sync Xresources

while :												# Start custom statusbar script
do
	$HOME/.config/statusbar.sh
	sleep 1
done &

exec dwm											# start window manager
