#!/bin/sh
day="$(date +%d | awk '{print substr($0,length,1)}')"

if [ "$day" = "1" ]; then
	date '+%a %dst %b, %H:%M'  	
	
elif [ "$day" = "2" ]; then
	date '+%a %dnd %b, %H:%M'  

elif [ "$day" = "3" ]; then
	date '+%a %drd %b, %H:%M' 

else 
	date '+%a %dth %b, %H:%M'

fi
