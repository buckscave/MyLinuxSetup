#! /bin/sh
# This setting is for dwm status bar configuration, key and startup application

# Set wallpaper
feh --bg-center ~/Pictures/ws_Create_Something_1366x768.jpg

#run network manager
nm-applet &

# Show memory use, volume %, battery % and time in status bar
while
    xsetroot -name "Vol:$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')  Batt:$(acpi | awk '{ print $4 }' | tr -d ',')  $(date +"%a %d-%b-%Y %R" )"
	do

    sleep 1

done &

# Launch system-wide stuff first, then dwm...
exec dwm
