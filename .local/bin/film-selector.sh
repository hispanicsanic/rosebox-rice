#!/bin/sh
path="/home/ollie/videos/films/"
file="$(ls ~/videos/films/ | dmenu -i -l 30 -nb '#282828' -nf '#D8DEE9' -sb '#81A1C1' -sf '#282828' -fn 'Cascadia Code-12')"

if [ "$file" = "" ]; then
	exit 0
fi

mpv "$path$file"

