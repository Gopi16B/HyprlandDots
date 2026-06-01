#!/bin/bash
WALL_DIR="$HOME/wallpaper"
source "$HOME/.cache/wal/colors.sh"

if ! pidof swww-daemon >/dev/null; then
    swww-daemon &
    sleep 0.5
fi

GRID_THEME="
* {
    font: \"JetBrainsMono Nerd Font 12\";
    background-color: transparent;
    text-color: ${foreground};
    margin: 0px;
    padding: 0px;
    spacing: 0px;
}
window {
    width: 820px;
    height: 700px;
    anchor: center;
    location: center;
    border-radius: 12px;
    background-color: ${background};
}
mainbox {
    padding: 12px;
    spacing: 14px;
    children: [ inputbar, listview ];
}
inputbar {
    background-color: ${color0};
    border-color: ${color0};
    border: 2px;
    border-radius: 16px;
    padding: 8px 16px;
    spacing: 8px;
    children: [ prompt, entry ];
}
prompt {
    text-color: ${foreground};
    background-color: transparent;
}
entry {
    placeholder: \"Search wallpaper...\";
    placeholder-color: ${foreground}66;
    text-color: ${foreground};
    background-color: transparent;
}
listview {
    columns: 3;
    lines: 2;
    flow: horizontal;
    fixed-height: true;
    fixed-columns: true;
    cycle: false;
    scrollbar: false;
    spacing: 16px;
    background-color: transparent;
    margin: 12px 0 0;
}
element {
    orientation: vertical;
    padding: 8px 16px;
    spacing: 8px;
    border-radius: 16px;
    background-color: transparent;
}
element selected.normal,
element selected.active {
    background-color: ${color1};
}
element-icon {
    size: 210px;
    horizontal-align: 0.5;
    vertical-align: 0.5;
    border-radius: 14px;
    background-color: transparent;
}
element-text {
    horizontal-align: 0.5;
    text-color: inherit;
    background-color: transparent;
}
"

SELECTED=$(
for img in "$WALL_DIR"/*; do
    [[ "$img" =~ \.(jpg|jpeg|png|webp|PNG|JPG)$ ]] || continue
    printf "%s\0icon\x1f%s\n" "$(basename "$img")" "$img"
done | rofi \
-dmenu \
-i \
-show-icons \
-theme-str "$GRID_THEME" \
-p "" \
-name "wallpaper-picker"
)

if [ -n "$SELECTED" ]; then
    awww img "$WALL_DIR/$SELECTED" \
        --transition-type wipe \
        --transition-duration 1
    wal -i "$WALL_DIR/$SELECTED" -n -q
    ~/.config/mako/makopywall.sh
fi
