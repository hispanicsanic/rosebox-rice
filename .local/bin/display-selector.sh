#!/bin/sh

available="$(xrandr -q | grep " connected" | awk '{printf $1"\n"}')"
displayno="$(xrandr -q | grep " connected" | awk '{printf $1"\n"}' | wc -w)"

if [ "$displayno" = "1" ]; then
	display="$available"
else
	display="$(xrandr -q | grep " connected" | awk '{printf $1"\n"}' | dmenu -i -l 30 -nb '#282828' -nf '#D8DEE9' -sb '#81A1C1' -sf '#282828' -fn 'Cascadia Code-12')"
fi

case "$display" in

	eDP1)
	xrandr --output HDMI1 --off --output eDP1 --auto
	;;

	HDMI1)
	xrandr --output HDMI1 --auto --output eDP1 --off
	;;
esac
