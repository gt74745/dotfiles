xinput --set-prop 'ELAN0735:00 04F3:316C Touchpad' 'libinput Tapping Enabled' 1

xrdb $HOME/.Xresources
feh --bg-fill ~/Pictures/green.jpg

sudo chown garrison:wheel /sys/class/backlight/amdgpu_bl1/brightness

while :
do
	$HOME/.config/statusbar.sh
	sleep 1
done &

xss-lock i3lock &

exec dwm
