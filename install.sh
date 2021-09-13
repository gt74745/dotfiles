#!/bin/sh

cp -r .config/* $HOME/.config
cp -r .2bwm $HOME/
cp .vimrc $HOME/
cp .xinitrc $HOME/
sudo cp .rofi/* /usr/share/rofi/themes

cd $HOME/.2bwm && make && sudo make clean install

cd .
