#!/usr/bin/sh

# Define the clock
Clock() {
        date "+%b %d %H:%M"
}

# Define the battery
Battery() {
	echo "BAT:$(acpi --battery | cut -d, -f2)"
}

# Define the internet
Internet() {
	if [ "$(cat /sys/class/net/w*/operstate)" = up ]; then
		Connection="ON"
	elif [ "$(cat /sys/class/net/e*/operstate)" = up ]; then
		Connection="ON"
	elif [ "$(cat /sys/class/net/v*/operstate)" = up ]; then
		Connection="ON"
	else
		Connection="OFF"
	fi
	echo "INT: $Connection"
}

# Define the desktop
Desktop() {
	bspc query -D -d focused --names
}

# Print
while true; do
        echo "%{l} $(Desktop) %{c}$(Clock)%{r}$(Internet) | $(Battery) "
        sleep 1
done
