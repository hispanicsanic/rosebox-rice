#!/bin/sh

state="$(nmcli device status | grep 'wifi ' | awk '{printf $3}')"

if [ "$state" = "connected" ]; then
	echo $(nmcli device | grep 'wifi ' | awk '{print $4}')
elif [ "$state" = "connecting" ]; then
	echo "connecting"
fi
