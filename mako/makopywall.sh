#!/bin/bash

source ~/.cache/wal/colors.sh

c0=${color0//#/}
c4=${color4//#/}
c1=${color1//#/}

# mix(@color0, #1a1a1a, 0.2)
bg=$(python3 -c "
c = '$c0'
r = int(c[0:2], 16)
g = int(c[2:4], 16)
b = int(c[4:6], 16)

r2 = int(r * 0.2 + 0x1a * 0.8)
g2 = int(g * 0.2 + 0x1a * 0.8)
b2 = int(b * 0.2 + 0x1a * 0.8)

print(f'{r2:02x}{g2:02x}{b2:02x}')
")

# mix(white, @color4, 0.25)
text=$(python3 -c "
c = '$c4'

r = int(c[0:2], 16)
g = int(c[2:4], 16)
b = int(c[4:6], 16)

r2 = int(r * 0.25 + 255 * 0.75)
g2 = int(g * 0.25 + 255 * 0.75)
b2 = int(b * 0.25 + 255 * 0.75)

print(f'{r2:02x}{g2:02x}{b2:02x}')
")

cat > ~/.config/mako/config << EOF
background-color=#${bg}ff
text-color=#${text}

width=350
height=65
padding=8

border-size=0
border-radius=14

text-alignment=center

default-timeout=2000
max-visible=2

anchor=top-center

font=Noto Sans Medium 11
EOF

makoctl reload
