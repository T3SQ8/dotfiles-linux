#!/bin/bash

Gui=("keepassxc" "firefox")
Term=("vim" "ranger")
Settings=("brightness" "screen-resolution")

settingsfunc() {
var1=$(printf '%s\n' "${Settings[@]}"| dmenu)
}

brightnessfunc() {
xrandr --output $(xrandr -q | grep connected | head -n 1 | cut -d ' ' -f1) --brightness $(? | dmenu -p "Set brightness to?:")
}

screenresfunc() {
xrandr -s $(xrandr | sed s/\ \ \ // | awk '{print$1;}' | grep x | dmenu -p "Set the screen resolution to?:")
}

Choise=$(printf '%s\n' "${Gui[@]}" "${Term[@]}" settings | dmenu)

if [ "$Choise" = settings ]; then
	settingsfunc
elif [ "$(printf '%s\n' "${Gui[@]}" | grep "$Choise")" = "$Choise" ]; then
	sh -c "$Choise" &
else
	st -e "$Choise" &
fi

case "$var1" in
	brightness) brightnessfunc &;;
	screen-resolution) screenresfunc &;;
esac
