#!/bin/bash

#WALLPAPER_DIR="/usr/share/backgrounds/sway/"
ALT_DIR="$HOME/sdstorage/swaybg/"
#RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
RANDOM_WALLPAPER=$(find "$ALT_DIR" -type f | shuf -n 1)
swaybg -i "$RANDOM_WALLPAPER" &
#swaybg -i "$RANDOM_WALLPAPER" &
