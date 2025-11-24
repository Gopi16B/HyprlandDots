#!/bin/bash

WALLPAPER_DIR="$HOME/wallpaper"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" | shuf -n 1)

# Start swww-daemon if not running
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww init &
    sleep 1
fi

# Animated wallpaper with swww (fast circle, 0.1s)
swww img "$WALLPAPER" --transition-type=outer --transition-duration=1.5

wal -n -i "$WALLPAPER"

