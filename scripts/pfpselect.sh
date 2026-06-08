#!/bin/bash

# Configuration paths
KITTY_CONF="$HOME/.config/kitty/kitty.conf"
ROFI_THEME="$HOME/.config/rofi/wallpapers.rasi"
HYPRLOCK_CONF="$HOME/.config/hypr/hyprlock.conf"

# "Name|PFP_Location"
THEMES=(
    "Hina|$HOME/Downloads/pfpslol/hina.jpg"
    "Hina 2|$HOME/Downloads/pfpslol/hina2.jpg"
    "Yukari|$HOME/Downloads/pfpslol/yukari.jpg"
    "Zeri 1|$HOME/Downloads/pfpslol/zeri icon.jpg"
    "Fold|$HOME/Downloads/pfpslol/fold7.png"
    "Makoto|$HOME/Downloads/pfpslol/makoto image 2.png"
    "Hee Ho|$HOME/Downloads/pfpslol/heeho.jpg"
    "liv|$HOME/Downloads/pfpslol/liv.jpg"
    "Phoebe|$HOME/Downloads/pfpslol/yumi.jpg"
    "Jey|$HOME/Downloads/pfpslol/IMG_1788.jpg"
    "Zeri 2|$HOME/Downloads/pfpslol/zerizerilol.png"
    "March|$HOME/Downloads/pfpslol/mrch.jpg"
    "Miyu|$HOME/Downloads/pfpslol/miyu.png"
    "Centi|$HOME/Downloads/pfpslol/pfpcenti.png"
    "Tomoko|$HOME/Downloads/pfpslol/tomokosquare.jpg"
)

MENU="" # 1. Generate menu for Rofi
for theme in "${THEMES[@]}"; do
    NAME=$(echo "$theme" | cut -d'|' -f1)
    WP_PATH=$(echo "$theme" | cut -d'|' -f2)
    MENU+="$NAME\x00icon\x1f$WP_PATH\n"
done

# 2. Show Rofi menu
CHOICE=$(echo -e "$MENU" | sed '/^$/d' | rofi -dmenu -p "PFP Select" -i -theme "$ROFI_THEME")
[ -z "$CHOICE" ] && exit 0

# 3. Grabs the line starting with the choice name, then grabs everything after the |
SELECTED_THEME=$(printf "%s\n" "${THEMES[@]}" | grep "^$CHOICE|")
PFP_PATH=$(echo "$SELECTED_THEME" | cut -d'|' -f2)
[ -z "$PFP_PATH" ] && exit 1

if [ -f "$KITTY_CONF" ]; then # 4. Update Kitty Configuration
    CURRENT_KITTY_PATH=$(grep "^window_logo_path" "$KITTY_CONF") # Grab current path
    sed -i "s#$CURRENT_KITTY_PATH#window_logo_path $PFP_PATH#" "$KITTY_CONF" # Replace entire line
    kill -SIGUSR1 $(pgrep kitty) 2>/dev/null #reset
fi

if [ -f "$HYPRLOCK_CONF" ]; then # 5. Update Hyprlock Configuration
    sed -i "s|^[[:space:]]*path = .* # PFP|    path = $PFP_PATH # PFP|" "$HYPRLOCK_CONF"
fi

notify-send "PFP Changed" "Switched to $CHOICE successfully."
