#!/bin/bash

WALLPAPER_DIR="$HOME/wallpaper"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" | shuf -n 1)

# Set animated wallpaper with swww
awww img "$WALLPAPER" --transition-type=outer --transition-duration=1.3

# Apply pywal colors
wal -n -i "$WALLPAPER"
