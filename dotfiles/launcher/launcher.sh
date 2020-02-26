#!/bin/bash

GUI=("keepassxc" "firefox")
TERM=("vim" "ranger")
SETTINGS=("brightness" "screen-resolution")

settingsfunc() {
var1=$(printf '%s\n' "${SETTINGS[@]}"| dmenu)
}

brightnessfunc() {
xrandr --output $(xrandr -q | grep connected | head -n 1 | cut -d ' ' -f1) --brightness $(? | dmenu -p "Set brightness to?:")
}

screenresfunc() {
xrandr -s $(xrandr | sed s/\ \ \ // | awk '{print$1;}' | grep x | dmenu -p "Set the screen resolution to?:")
}

choise=$(printf '%s\n' "${GUI[@]}" "${TERM[@]}" settings | dmenu)

if [ "$choise" = settings ]; then
	settingsfunc
else
	if [ "$(printf '%s\n' "${GUI[@]}" | grep "$choise")" = "$choise" ]; then
		sh -c "$choise" &
	else
		st -e "$choise" &
	fi
fi

case "$var1" in
	brightness) brightnessfunc &;;
	screen-resolution) screenresfunc &;;
esac
