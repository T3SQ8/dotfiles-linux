option=$(echo "vim
ranger
settings" | dmenu)

settingsfunc()
{
var1=$(echo "brightness
screen-resolution" | dmenu)
}

brightnessfunc()
{
xrandr --output $(xrandr -q | grep connected | head -n 1 | cut -d ' ' -f1) --brightness $(echo "set brightness to?: " | dmenu)
}

screenresfunc()
{
xrandr -s $(xrandr | sed s/\ \ \ // | awk '{print$1;}' | grep x | dmenu)
}


case "$option" in
	GuiProgram) sh -c $option &;;
	vim|ranger) st -e $option &;;
	settings) settingsfunc ;;
esac

case "$var1" in
	brightness) brightnessfunc &;;
	screen-resolution) screenresfunc &;;
esac
