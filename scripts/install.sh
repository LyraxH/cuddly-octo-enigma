#!/bin/bash
echo "running balls install script"

echo "remove kde!!!"
sudo pacman -Rncs --noconfirm dolphin

echo "updating system"
sudo pacman -Syu --noconfirm

PACKAGES=(
	#essentials
	"rofi"
	"waybar"
	"hyprpolkitagent"
	"hyprpaper"
	"hyprlock"
	"hyprshot-gui"
	"power-profiles-daemon"
	"feh"
	"noto-fonts"
	"noto-fonts-cjk"
	"noto-fonts-emoji"
	"otf-font-awesome"
	"woff2-font-awesome"
	"ttf-jetbrains-maple-mono-nf-xx-xx"
	"ttf-jetbrains-mono-git"
	"ttf-breeze-sans"
	"pywal"
	"ffmpegthumbnailer"
	"brightnessctl"
	"playerctl"
	"pipewire"
	"pipewire-pulse"
	"pipewire-audio"
	"pipewire-session-manager"
	"wireplumber"
	"jdk-openjdk"
	"sof-firmware"
	"alsa-ucm-conf"


	#my apps
	"code"
	"yazi"
	"discord"
	"spotify"
	"brave-bin"
	"notesnook-bin"
	"nemo"
	"spicetify-cli"
	"fastfetch"
	"pipes.sh"
)

echo "installing packages"
paru -S --noconfirm "${PACKAGES[@]}"

echo "done."
