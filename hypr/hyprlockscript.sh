#!/bin/bash
source ~/.cache/wal/colors.sh
wal=$(cat ~/.cache/wal/wal)

# Strip # from pywal colors
c4=${color4//#/}
fg=${foreground//#/}

# Blend white with color4 using python
blended=$(python3 -c "
c = '$c4'
r = int(c[0:2], 16)
g = int(c[2:4], 16)
b = int(c[4:6], 16)
r2 = int(r * 0.25 + 255 * 0.75)
g2 = int(g * 0.25 + 255 * 0.75)
b2 = int(b * 0.25 + 255 * 0.75)
print(f'{r2:02x}{g2:02x}{b2:02x}')
")

cat > ~/.config/hypr/hyprlock.conf <<EOF
background {
    monitor =
    path = $wal
    blur_passes = 3
    blur_size = 3
    brightness = 0.5
}
input-field {
    monitor =
    size = 300, 50
    outline_thickness = 2
    outer_color = rgba(${c4}55)
    inner_color = rgba(00000088)
    font_color = rgb($blended)
    dots_size = 0.3
    dots_spacing = 0.2
    dots_center = true
    position = 0, -100
    halign = center
    valign = center
}
label {
    monitor =
    text = cmd[update:1000] echo "\$(LC_TIME=en_US.UTF-8 date +"%I:%M %p")"
    font_size = 100
    font_family = Rounded M+ 1c Bold
    position = 0, 100
    halign = center
    valign = center
}
EOF
hyprlock
