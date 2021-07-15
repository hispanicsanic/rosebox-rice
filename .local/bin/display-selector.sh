#!/bin/sh
available="$(xrandr -q | grep " connected" | awk '{print $1}')"
echo $available
displayno="$(echo -e "$available" | wc -w)"

if [ "$displayno" = "1" ]; then
	display="$available"
else
	display="$(echo -e "$available" | dmenu -i)"
fi

case "$display" in

	eDP1)
	xrandr --output HDMI1 --off --output eDP1 --auto
	;;

	HDMI1)
	xrandr --output HDMI1 --auto --output eDP1 --off
	;;
esac
