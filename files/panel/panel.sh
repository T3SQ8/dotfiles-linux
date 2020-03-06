#!/usr/bin/bash

# Define the clock
Clock() {
        DATETIME=$(date "+%b %d %H:%M")
        echo "$DATETIME"
}

# Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo "BAT:$BATPERC"
}

# Define the internet
Internet() {
	if [ "$(cat /sys/class/net/w*/operstate)" = up ]; then
		CONNECTION="ON"
	else
		CONNECTION="OFF"
	fi
	echo "INT: $CONNECTION"
}

# Define the desktop
desktop() {
	DESKTOP=$(bspc query -D -d focused --names)
	echo "$DESKTOP"
}

# Print
while true; do
        echo "%{l} $(desktop) %{c}$(Clock)%{r}$(Internet) | $(Battery) "
        sleep 1
done
