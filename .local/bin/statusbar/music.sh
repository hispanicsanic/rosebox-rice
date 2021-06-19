#!/bin/sh

status="$(playerctl --player=mpd status)"
artist="$(playerctl --player=mpd metadata artist)"
song="$(playerctl --player=mpd metadata title)"
char="$(echo "(⏵)" $artist - $song | wc -m)"
limit="60"

if [ "$status" = "Stopped" ]; then
	exit
fi

if [ "$char" -lt "$limit" ]; then
	if [ "$status" = "Playing" ]; then
		echo "(⏵)" $artist - $song
	
	elif [ "$status" = "Paused" ]; then
		echo "(⏸)" $artist - $song
	fi

else
	if [ "$status" = "Playing" ]; then
                echo "(⏵)" $artist - $song | cut -c -52 | awk '{ print $0 "..."}'
        
	elif [ "$status" = "Paused" ]; then
		echo "(⏸)" $artist - $song | cut -c -52 | awk '{print $0 "..."}' 
        
	fi
fi

