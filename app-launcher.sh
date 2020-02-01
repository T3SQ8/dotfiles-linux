var1=$(echo "firefox
gimp
gnome-boxes
keepassxc
libreoffice
newsboat
ranger
syncthing
vim" | dmenu)

case "$var1" in
	firefox|gimp|gnome-boxes|keepassxc|libreoffice|syncthing) sh -c $var1 &;;
	newsboat|ranger|vim ) st -e $var1 &
esac
