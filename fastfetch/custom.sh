#!/bin/bash

source ~/.cache/wal/colors.sh 2>/dev/null

RESET='\033[0m'
BOLD='\033[1m'
CYAN='\033[0;36m'
BCYAN='\033[1;36m'
BLUE='\033[0;34m'
BBLUE='\033[1;34m'
WHITE='\033[1;37m'
DIM='\033[2m'
PURPLE='\033[0;35m'
BPURPLE='\033[1;35m'

# Black hole frames - accretion disk rotating around event horizon
frames=(
# Frame 1
"
${BPURPLE}                    . · ˙ ° ˙ · .
${BLUE}              . ·  ╭───────────────╮  · .
${BCYAN}           · ╭────╯                 ╰────╮ ·
${CYAN}         · ╭─╯    ╭───────────────╮    ╰─╮ ·
${WHITE}        · ─╯   ╭──╯   ███████████   ╰──╮  ╰─ ·
${BPURPLE}       ·─╯  ╭─╯     ██  ●●●●●  ██     ╰─╮  ╰─·
${BLUE}      ·╯  ╭─╯       ██ ●●   ●● ██       ╰─╮  ╰·
${BCYAN}      ·   ╯         ████●     ●████         ╰   ·
${CYAN}      ·  ╰─╮        ██ ●●   ●● ██        ╭─╯  ·
${WHITE}       ·╮  ╰─╮     ██  ●●●●●  ██     ╭─╯  ╭·
${BPURPLE}        ·╮   ╰──╮   ███████████   ╭──╯   ╭·
${BLUE}         · ╰─╮    ╰───────────────╯    ╭─╯ ·
${BCYAN}           · ╰────╮                 ╭────╯ ·
${PURPLE}              . ·  ╰───────────────╯  · .
${DIM}                    . · ˙ ° ˙ · .${RESET}
"
# Frame 2
"
${BLUE}                 · . ˙ ° ˙ . ·
${BPURPLE}           . ·  ╭───────────────╮  · .
${PURPLE}          · ╭────╯                 ╰────╮ ·
${BLUE}         · ╭─╯    ╭───────────────╮    ╰─╮ ·
${BCYAN}        · ─╯   ╭──╯   ███████████   ╰──╮  ╰─ ·
${CYAN}       ·─╯  ╭─╯     ██  ●●●●●  ██     ╰─╮  ╰─·
${WHITE}      ·╯  ╭─╯       ██ ●●   ●● ██       ╰─╮  ╰·
${BPURPLE}      ·   ╯         ████●     ●████         ╰   ·
${PURPLE}      ·  ╰─╮        ██ ●●   ●● ██        ╭─╯  ·
${BLUE}       ·╮  ╰─╮     ██  ●●●●●  ██     ╭─╯  ╭·
${BCYAN}        ·╮   ╰──╮   ███████████   ╭──╯   ╭·
${CYAN}         · ╰─╮    ╰───────────────╯    ╭─╯ ·
${WHITE}           · ╰────╮                 ╭────╯ ·
${BPURPLE}              . ·  ╰───────────────╯  · .
${DIM}                 · . ˙ ° ˙ . ·${RESET}
"
# Frame 3
"
${CYAN}                ° ˙ · . · ˙ °
${BLUE}           . ·  ╭───────────────╮  · .
${BPURPLE}          · ╭────╯                 ╰────╮ ·
${PURPLE}         · ╭─╯    ╭───────────────╮    ╰─╮ ·
${BLUE}        · ─╯   ╭──╯   ███████████   ╰──╮  ╰─ ·
${BCYAN}       ·─╯  ╭─╯     ██  ●●●●●  ██     ╰─╮  ╰─·
${CYAN}      ·╯  ╭─╯       ██ ●●   ●● ██       ╰─╮  ╰·
${WHITE}      ·   ╯         ████●     ●████         ╰   ·
${BPURPLE}      ·  ╰─╮        ██ ●●   ●● ██        ╭─╯  ·
${PURPLE}       ·╮  ╰─╮     ██  ●●●●●  ██     ╭─╯  ╭·
${BLUE}        ·╮   ╰──╮   ███████████   ╭──╯   ╭·
${BCYAN}         · ╰─╮    ╰───────────────╯    ╭─╯ ·
${CYAN}           · ╰────╮                 ╭────╯ ·
${WHITE}              . ·  ╰───────────────╯  · .
${DIM}                ° ˙ · . · ˙ °${RESET}
"
# Frame 4
"
${WHITE}              ˙ · ° . ° · ˙
${BCYAN}           . ·  ╭───────────────╮  · .
${BLUE}          · ╭────╯                 ╰────╮ ·
${BPURPLE}         · ╭─╯    ╭───────────────╮    ╰─╮ ·
${PURPLE}        · ─╯   ╭──╯   ███████████   ╰──╮  ╰─ ·
${BLUE}       ·─╯  ╭─╯     ██  ●●●●●  ██     ╰─╮  ╰─·
${BCYAN}      ·╯  ╭─╯       ██ ●●   ●● ██       ╰─╮  ╰·
${CYAN}      ·   ╯         ████●     ●████         ╰   ·
${WHITE}      ·  ╰─╮        ██ ●●   ●● ██        ╭─╯  ·
${BPURPLE}       ·╮  ╰─╮     ██  ●●●●●  ██     ╭─╯  ╭·
${PURPLE}        ·╮   ╰──╮   ███████████   ╭──╯   ╭·
${BLUE}         · ╰─╮    ╰───────────────╯    ╭─╯ ·
${BCYAN}           · ╰────╮                 ╭────╯ ·
${CYAN}              . ·  ╰───────────────╯  · .
${DIM}              ˙ · ° . ° · ˙${RESET}
"
)

# Animate
for i in 1 2 3 4; do
    for frame in "${frames[@]}"; do
        clear
        echo -e "$frame"
        sleep 0.15
    done
done

# Final - side by side with fastfetch
clear
FETCH=$(fastfetch --logo none 2>/dev/null)

BH_LINES=()
while IFS= read -r line; do
    BH_LINES+=("$line")
done < <(echo -e "${frames[0]}")

FETCH_LINES=()
while IFS= read -r line; do
    FETCH_LINES+=("$line")
done <<< "$FETCH"

max=${#BH_LINES[@]}
if [ ${#FETCH_LINES[@]} -gt $max ]; then
    max=${#FETCH_LINES[@]}
fi

for ((i=0; i<max; i++)); do
    printf "%-70s %s\n" "${BH_LINES[$i]}" "${FETCH_LINES[$i]}"
done
