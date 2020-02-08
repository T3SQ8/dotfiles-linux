#!/bin/sh
mkdir -p ~/.config/ranger ~/.config/bspwm ~/.config/sxhkd ~/.config/dmenu

cp -r app-launcher.sh ~/.config/dmenu
cp -r bspwmrc ~/.config/bspwm/bspwmrc
cp -r panel ~/.config/
cp -r profile ~/.profile
cp -r rc.conf ~/.config/ranger/rc.conf
cp -r sxhkdrc ~/.config/sxhkd/sxhkdrc 
cp -r vim ~/.vim
cp -r vimrc ~/.vimrc
cp -r xinitrc ~/.xinitrc
cp -r zshrc ~/.zshrc
cp -r launcher ~/.config/
