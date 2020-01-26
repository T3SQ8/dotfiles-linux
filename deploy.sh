#!/bin/sh
cat profile >> ~/.profile
cp -r rc.conf ~/.config/ranger/
cp -r sxhkdrc ~/.config/sxhkd/
cp -r vimrc ~/.vimrc
cp -r zshrc ~/.zshrc
