#!/bin/sh
cd ~/videos/films/
mpv "$(ls | dmenu -i -l 30)"

