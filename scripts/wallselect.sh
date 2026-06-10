#!/bin/bash
KITTY_CONF="$HOME/.config/kitty/kitty.conf"
ROFI_CONF="$HOME/.config/rofi/theme.rasi"
ROFI_THEME="$HOME/.config/rofi/wallpapers.rasi"
YAZI_CONF="$HOME/.config/yazi/theme.toml"
WAYBAR_STYLE="$HOME/.config/waybar/style.css"
STARSHIP_CONF="$HOME/.config/starship.toml"
HYPRLOCK_CONF="$HOME/.config/hypr/hyprlock.conf"
HYPRLAND_CONF="$HOME/.config/hypr/hyprland.conf"
WAYBAR_COLORS="$HOME/.config/waybar/colors.css"
NVIM_CONF="$HOME/.config/nvim/init.lua"

THEMES=( # "Name|Wallpaper_Path|Hex_Accent1|Hex_Accent2|Hex_Bg|Hex_Accent3"
    "Soraka 1|$HOME/Pictures/wallpapers/lol/soraka.jpg|#4bc5ff|#e1c28f|#11131c|#2956ab|"
    "Soraka 2|$HOME/Pictures/wallpapers/lol/sorakafaerie.jpg|#b468a2|#82d6cc|#702940|#cce7e3|"
    "Cyber Halo|$HOME/Pictures/wallpapers/lol/cyberhalo.jpg|#7dcfe3|#a28b7a|#63629c|#889fef|"
    "Sacred Sword|$HOME/Pictures/wallpapers/lol/sacredsword.jpg|#ecafd1|#983143|#35305d|#297077|"
    "Broken Cov MF|$HOME/Pictures/wallpapers/lol/broken_cov.jpg|#b169ef|#c588a1|#27207a|#d0d6f6|"
    "Battle Bunny MF|$HOME/Pictures/wallpapers/lol/bunny_mf.jpg|#d9793e|#af61bc|#482a66|#a1ba98|"
    "Cosmic Destiny Nami|$HOME/Pictures/wallpapers/lol/cosmic_destiny_nami.jpg|#a24190|#403f86|#271d5c|#61b7da|"
    "Mythmaker Nami|$HOME/Pictures/wallpapers/lol/mythmaker_nami.jpg|#b02234|#a66e3d|#241f26|#518578|"
    "Springs Yunara|$HOME/Pictures/wallpapers/lol/springs_yunara.jpg|#38d7a6|#9e3468|#1b2d3d|#e07b2c|"
    "Nottingham|$HOME/Pictures/wallpapers/lol/nottingham.jpg|#a19643|#f8c83d|#272822|#7fe8fc|"
    "DRX|$HOME/Pictures/wallpapers/lol/drx.jpg|#57c3ed|#673ba1|#0a0815|#4a32e8|"
    "EDG|$HOME/Pictures/wallpapers/lol/edg.jpg|#474d8d|#9acbe7|#292735|#724fbb|"
    "Ashe Motus|$HOME/Pictures/wallpapers/lol/ashe_motus.jpg|#fb307f|#ad9176|#2d2034|#411023|"
    "Leona Motus|$HOME/Pictures/wallpapers/lol/leona_motus.jpg|#d832b6|#f4b7fd|#321155|#9e32cb|"
    "Taliyah Motus|$HOME/Pictures/wallpapers/lol/taliyah_motus.jpg|#58c0cf|#257869|#08171e|#204b7b|"
    "JingLiu|$HOME/Pictures/wallpapers/hdjingliu.png|#a6e3e9|#c5a880|#101216|#4b6584|"
    "Winter Wonder Zeri|$HOME/Pictures/wallpapers/lol/zeri/winterWonderZeri.jpg|#38b6ff|#ffd166|#131a26|#22577a|"
    "Yukari|$HOME/Pictures/wallpapers/persona/yukari1.jpg|#ff4d4d|#52ebd3|#1b2226|#e0a96d|"
    "Aesthetic Norm|$HOME/Downloads/wp2.jpg|#ff9ebb|#63bbf2|#161224|#406080|"
    "Yookari|$HOME/Pictures/wallpapers/persona/yukari1.webp|#b266a2|#f0b6e0|#261524|#6a335d|"
    "Kasumi|$HOME/Pictures/wallpapers/persona/kasumi.webp|#ff2222|#a31111|#0d0505|#5c0909|"
    "Book Blue|$HOME/Pictures/wallpapers/samsungWallpapers/1.jpg|#2583bf|#92513f|#080c15|#425759|"
    "Book Pink|$HOME/Pictures/wallpapers/samsungWallpapers/2.jpg|#cc2b6b|#895035|#160c0d|#302d3c|"
    "Book Cyan|$HOME/Pictures/wallpapers/samsungWallpapers/3.jpg|#1a7d83|#8f7637|#0b120b|#2a303c|"
    "Book Orange|$HOME/Pictures/wallpapers/samsungWallpapers/4.jpg|#e25916|#247ae5|#000000|#263f3a|"
    "Book Red|$HOME/Pictures/wallpapers/samsungWallpapers/5.jpg|#fd204a|#2cc8c7|#000000|#0e322b|"
    "Pro Purple|$HOME/Pictures/wallpapers/samsungWallpapers/6.png|#2c47a8|#a269ec|#00001e|#377c8b|"
    "Pro Red|$HOME/Pictures/wallpapers/samsungWallpapers/7.png|#cd2257|#e43534|#000000|#d31d30|"
    "Pro Blue|$HOME/Pictures/wallpapers/samsungWallpapers/8.png|#689ea0|#285495|#000217|#09334b|"
    "Pro Orange|$HOME/Pictures/wallpapers/samsungWallpapers/9.jpg|#d56c18|#191e54|#000000|#294684|"
    "Pro Yellow|$HOME/Pictures/wallpapers/samsungWallpapers/10.png|#c28b16|#0d4345|#000000|#16534e|"
    "Your Name 1|$HOME/Pictures/wallpapers/NiMe/your name 1.jpg|#85c1e9|#af7ac5|#0c0f12|#ec7063|"
    "Your Name 2|$HOME/Pictures/wallpapers/NiMe/your name 2.jpg|#3498db|#bb8fce|#050811|#f5b041|"
    "Your Name 3|$HOME/Pictures/wallpapers/NiMe/your name 3.jpg|#eb984e|#5dade2|#18161b|#f4d03f|"
    "Your Name 4|$HOME/Pictures/wallpapers/NiMe/your name 4.jpg|#5dade2|#df73ff|#0a0b10|#f39c12|"
    "Weathering With You 1|$HOME/Pictures/wallpapers/NiMe/weathering with you 1.jpg|#5dade2|#ec7063|#111625|#f4d03f|"
    "Weathering With You 2|$HOME/Pictures/wallpapers/NiMe/weathering with you 2.jpg|#5dade2|#abebc6|#0e1726|#f7dc6f|"
    "Suzume 1|$HOME/Pictures/wallpapers/NiMe/suzume1.jpg|#c97be6|#3fa9f5|#0d131a|#f9eb6c|"
    "Suzume 2|$HOME/Pictures/wallpapers/NiMe/suzume2.jpg|#4da6ff|#8cd9b3|#0f1a24|#e6af67|"
    "Suzume 3|$HOME/Pictures/wallpapers/NiMe/suzume3.jpg|#5dade2|#ec7063|#111625|#f4d03f|"
)

if [ -n "$1" ]; then
    CHOICE="$1"
else
    Menu=""
    for theme in "${THEMES[@]}"; do
        NAME=$(echo "$theme" | cut -d'|' -f1)
        WP_PATH=$(echo "$theme" | cut -d'|' -f2)
        MENU+="$NAME\x00icon\x1f$WP_PATH\n"
    done
    CHOICE=$(echo -e "$MENU" | sed '/^$/d' | rofi -dmenu -i -theme "$ROFI_THEME")
fi
[ -z "$CHOICE" ] && exit 0

THEME_FOUND=false
for theme in "${THEMES[@]}"; do
    if [[ "$theme" == "$CHOICE"* ]]; then
        WP_PATH=$(echo "$theme" | cut -d'|' -f2)
        ACCENT1=$(echo "$theme" | cut -d'|' -f3)
        ACCENT2=$(echo "$theme" | cut -d'|' -f4)
        BG_COLOR=$(echo "$theme" | cut -d'|' -f5)
        ACCENT3=$(echo "$theme" | cut -d'|' -f6)
        THEME_FOUND=true
        break
    fi
done

if [ "$THEME_FOUND" = false ]; then
    notify-send "Theme Error" "Theme '$CHOICE' not found."
    exit 1
fi

hyprctl hyprpaper wallpaper ",$WP_PATH"
C1=$(echo "$ACCENT1" | sed 's/#//')
C2=$(echo "$ACCENT2" | sed 's/#//')
C3=$(echo "$ACCENT3" | sed 's/#//')
BG=$(echo "$BG_COLOR" | sed 's/#//')
sed -i "s|col.active_border =.*# Border Gradient|col.active_border = rgb($C1) rgb($C2) rgb($C3) 45deg # Border Gradient|" "$HYPRLAND_CONF"
hyprctl keyword general:col.active_border "rgb($C1) rgb($C2) rgb($C3) 45deg"

if [ -f "$HYPRLOCK_CONF" ]; then
    sed -i "s|path =.*# Lock Wallpaper|path = $WP_PATH # Lock Wallpaper|" "$HYPRLOCK_CONF" 
    sed -i "s|color =.*# Date Color|color = rgb($C3) # Date Color|" "$HYPRLOCK_CONF"
    sed -i "s|color =.*# Time Color|color = rgb($C1) # Time Color|" "$HYPRLOCK_CONF"
    sed -i "s|shadow_color =.*# Time Glow|shadow_color = rgba(${C1}66) # Time Glow|" "$HYPRLOCK_CONF"
    sed -i "s|color =.*# Minutes Color|color = rgb($C2) # Minutes Color|" "$HYPRLOCK_CONF"
    sed -i "s|shadow_color =.*# Minutes Glow|shadow_color = rgba(${C2}66) # Minutes Glow|" "$HYPRLOCK_CONF"
    sed -i "s|border_color =.*# PFP Border|border_color = rgb($C3) # PFP Border|" "$HYPRLOCK_CONF"
    sed -i "s|outer_color =.*# Input Border|outer_color = rgb($C2) # Input Border|" "$HYPRLOCK_CONF"
    sed -i "s|inner_color =.*# Input Inner|inner_color = rgba(${BG}66) # Input Inner|" "$HYPRLOCK_CONF"
    sed -i "s|font_color =.*# Input Font|font_color = rgb($C1) # Input Font|" "$HYPRLOCK_CONF"
fi

if [ -f "$YAZI_CONF" ]; then
    sed -i "s/\(fg = \)\"#[0-9a-fA-F]\{6\}\"\(.*# Yazi_Accent1\)/\1\"$ACCENT1\"\2/" "$YAZI_CONF"
    sed -i "s/\(fg = \)\"#[0-9a-fA-F]\{6\}\"\(.*# Yazi_Accent2\)/\1\"$ACCENT2\"\2/" "$YAZI_CONF"
    sed -i "s/\(fg = \)\"#[0-9a-fA-F]\{6\}\"\(.*# Yazi_Bg\)/\1\"$BG_COLOR\"\2/" "$YAZI_CONF"
    sed -i "s/\(bg = \)\"#[0-9a-fA-F]\{6\}\"\(.*# Yazi_Bg\)/\1\"$BG_COLOR\"\2/" "$YAZI_CONF"
fi

if [ -f "$STARSHIP_CONF" ]; then
    sed -i "s/fg:#[0-9a-fA-F]\{6\}\" # Starship_OS_Accent1/fg:$ACCENT1\" # Starship_OS_Accent1/" "$STARSHIP_CONF"
    sed -i "s/\[┌─\](bold #[0-9a-fA-F]\{6\})/\[┌─\](bold $ACCENT1)/" "$STARSHIP_CONF"
    sed -i "s/\[└────◈ \](bold #[0-9a-fA-F]\{6\})/\[└────◈ \](bold $ACCENT1)/" "$STARSHIP_CONF"
    sed -i "s/fg:#[0-9a-fA-F]\{6\}\" # Starship_Dir_Accent2/fg:$ACCENT2\" # Starship_Dir_Accent2/" "$STARSHIP_CONF"
    sed -i "s/fg:#[0-9a-fA-F]\{6\}\" # Starship_Git_Accent3/fg:$ACCENT3\" # Starship_Git_Accent3/" "$STARSHIP_CONF"
    sed -i "s/fg:#[0-9a-fA-F]\{6\}\" # Starship_Status_Accent3/fg:$ACCENT3\" # Starship_Status_Accent3/" "$STARSHIP_CONF"
fi

if [ -f "$KITTY_CONF" ]; then
    sed -i "s/^background_opacity.*/background_opacity 0.2/" "$KITTY_CONF"
    sed -i "s/^background\s.*/background $BG_COLOR/" "$KITTY_CONF"
fi
kill -SIGUSR1 $(pgrep kitty)

if [ -f "$ROFI_CONF" ]; then
    sed -i "s|background-image:.*|background-image: url(\"$WP_PATH\", height);|" "$ROFI_CONF"
fi

echo -e "@define-color accent1 $ACCENT1;\n@define-color accent2 $ACCENT2;\n@define-color accent3 $ACCENT3;" > "$WAYBAR_COLORS"
pkill -SIGUSR2 waybar

notify-send "Theme Applied" "Switched to $CHOICE successfully."
