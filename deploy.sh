#!/bin/bash
# Installing dependencies:
# libx11-dev libx11-dev x11proto-dev for st.

sudo apt install -y git xorg feh vim ranger lemonbar dmenu make gcc bspwm sxhkd libx11-dev libx11-dev x11proto-dev

# Cloning repositories
mkdir -p ~/.config/ranger ~/.config/bspwm ~/.config/sxhkd
git clone https://github.com/T3SQ8/T3SQ8-st.git
git clone https://github.com/T3SQ8/wallpaper.git
cp -r wallpaper ~/.config/wallpaper
cd T3SQ8-st
make && sudo make install

# Dotfiles
cd ../dotfiles
cp -r bspwmrc ~/.config/bspwm/bspwmrc
cp -r panel ~/.config/
cp -r profile ~/.profile
cp -r rc.conf ~/.config/ranger/rc.conf
cp -r sxhkdrc ~/.config/sxhkd/sxhkdrc 
cp -r vim ~/.vim
cp -r xinitrc ~/.xinitrc
cp -r zshrc ~/.zshrc
cp -r launcher ~/.config/
