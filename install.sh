#!/bin/sh

cp -r .config/* $HOME/.config
cp -r .dwm $HOME/
cp -r .st $HOME/
cp .vimrc $HOME/
cp .xinitrc $HOME/
sudo cp .rofi/* /usr/share/rofi/themes

cd $HOME/.dwm && make && sudo make clean install
cd $HOME/.st && make && sudo make clean install

cd .
