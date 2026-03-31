WALLPAPER_DIR="$HOME/wallpaper"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" | shuf -n 1)



# Animated wallpaper with swww (fast circle, 0.1s)
awww img "$WALLPAPER" --transition-type=outer --transition-duration=1.3

wal -n -i "$WALLPAPER"
