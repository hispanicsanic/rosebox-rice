#!/bin/sh
day="$(date +%d)"

if [ "$day" = "1" ] || [ "$day" = "21" ] || [ "$day" = "31" ]; then
	date "+%a %dst %b, %H:%M"
	
elif [ "$day" = "2" ] || [ "$day" = "22" ]; then
	date "+%a %dnd %b, %H:%M"

elif [ "$day" = "3" ] || [ "$day" = "23" ]; then
	date "+%a %drd %b, %H:%M"

else 
	date "+%a %dth %b, %H:%M"

fi
