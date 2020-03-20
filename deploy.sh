#!/bin/sh
# Installing dependencies:
# libxft-dev libx11-dev x11proto-dev for st.
sudo apt install -y git xorg feh neovim ranger lemonbar dmenu make gcc bspwm sxhkd libx11-dev libxft-dev x11proto-dev acpi

# Cloning repositories
mkdir -p ~/.config/ranger ~/.config/bspwm ~/.config/sxhkd ~/.config/zsh ~/.local
git clone https://github.com/T3SQ8/T3SQ8-st.git
git clone https://github.com/T3SQ8/wallpaper.git
cp -r wallpaper ~/.config/wallpaper
cd T3SQ8-st
make && sudo make install

# Dotfiles
cd ../files
cp -r bin  ~/.local/bin
cp -r bspwmrc ~/.config/bspwm/bspwmrc
cp -r rc.conf ~/.config/ranger/rc.conf
cp -r sxhkdrc ~/.config/sxhkd/sxhkdrc 
cp -r nvim ~/.config/nvim
cp -r xinitrc ~/.xinitrc
cp -r newsboat ~/.config/newsboat

# Configuring shell
echo "Use BASH or ZSH?"
echo "[1]: BASH"
echo "[2]: ZSH"
read -r shell
case $shell in
	1)
		cp -r profile ~/.profile
		;;
	2)
		cp -r zprofile ~/.zprofile
		cp -r zshrc ~/.config/zsh/.zshrc
		sudo apt install zsh
		chsh -s /bin/zsh
		;;
esac
