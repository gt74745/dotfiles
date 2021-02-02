# dotfiles

Pretty simple; just run the install script. It will move everything to the right location (either into your home directory or /usr/share) and compile everything that needs it.

This uses the ibhagwan-picom fork for compositor. I could probably use a different one since I don't use rounded corners so this may work with others as long as they support kawase blur.

You will need to install picom and rofi beforehand. the dwm and st sources are a part of this package and are compiled and installed by the script.

I might make the switch to wayland but I'm not sure whether I can do that with dwm/I don't know how.

My vimrc is pretty basic, I just use it to edit shell and c scripts as well as ocassional java. It uses vundle so adding/removing plugins should be a piece of cake.

xinitrc is also pretty basic. By default it uses feh to set a wallpaper from /usr/share/backgrounds/Wallpaper.png.

Install script is stupid simple. Just delete any lines you don't want it doing.

Statusbar is just an xsetroot command in the xinitrc. The shell file is in the dwm source because I can't find anywhere else to put it.

Enjoy the dots!
