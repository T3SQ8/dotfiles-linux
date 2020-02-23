xrandr -s $(xrandr | sed s/\ \ \ // | awk '{print$1;}' | grep x | dmenu)
