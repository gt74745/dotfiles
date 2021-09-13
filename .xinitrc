#!/bin/sh

xrdb -load ~/.Xresources

feh --bg-fill /usr/share/backgrounds/Wallpaper.png

picom &

xsetroot -cursor_name left_ptr &

xinput --set-prop 12 'libinput Accel Speed' -0.4
xinput --set-prop 13 'libinput Accel Speed' -0.4

export _JAVA_AWT_WM_NONREPARENTING=1

2bwm &

while sleep 1;
do
	$HOME/2bwm/statusbar.sh;
done | lemonbar -u 1 -B#ff282828 -g 1600x24+0+0 &

exec urxvt
