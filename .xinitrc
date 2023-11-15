urxvtd &
xinput --set-prop 11 'libinput Tapping Enabled' 1
xrdb $HOME/.Xresources
feh --bg-fill ~/Pictures/green.jpg

while :
do
	$HOME/.config/statusbar.sh
	sleep 1
done &

exec dwm
