var1=$(echo "firefox
ranger
vim" | dmenu)

case "$var1" in
	firefox) sh -c $var1 &;;
	ranger|vim ) st -e $var1 &
esac
