picom &
export _JAVA_AWT_WM_NONREPARENTING=1 &
feh --bg-fill /usr/share/backgrounds/Wallpaper.jpg

xbindkeys &

while [ true ]
do
    xsetroot -name "$(/home/garrison/.dwm/statusbar.sh)"
    sleep 0.5
done &

exec dwm
