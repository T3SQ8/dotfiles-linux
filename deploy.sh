#!/bin/sh
mkdir -p ~/.config/ranger ~/.config/bspwm ~/.config/sxhkd

cp -r bspwmrc ~/.config/bspwm/bspwmrc
cp -r profile ~/.profile
cp -r rc.conf ~/.config/ranger/rc.conf
cp -r sxhkdrc ~/.config/sxhkd/sxhkdrc 
cp -r vimrc ~/.vimrc
cp -r xinitrc ~/.xinitrc
cp -r zshrc ~/.zshrc
