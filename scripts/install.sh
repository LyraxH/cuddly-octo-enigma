#!/bin/bash
echo "running bastard install script"

echo "Purging all KDE shitterware"
KDE_Shitters=(
    "dolphin"
    "kwallet"
    "kwallet5"
    "kwallet6"
    "kwayland"
    "kauth"
    "kconfig"
)

for pkg in "${KDE_Shitters[@]}"; do
    if pacman -Qi "$pkg" &>/dev/null; then
        echo "Removing $pkg..."
        sudo pacman -Rns --noconfirm "$pkg" 2>/dev/null || true
    fi
done

echo "Cleaning up leftover KDE framework dependencies..."
sudo pacman -Rns $(pacman -Qdtq) 2>/dev/null || true

echo "Updating System"
sudo pacman -Syu --noconfirm

Packages=(
    # essentials
    "7zip"
    "antigravity-ide"
    "bashtop"
    "blender-bin"
    "blueman"
    "bluetui"
    "brave-bin"
    "brightnessctl"
    "catppuccin-cursors-mocha"
    "catppuccin-gtk-theme-mocha"
    "etcher-bin"
    "fastfetch"
    "feh"
    "grim"
    "gnome-keyring"
    "hyprlock"
    "hyprpaper"
    "hyprpolkitagent"
    "hyprshot"
    "hyprpicker"
    "libsecret"
    "ncdu"
    "nemo"
    "nemo-file-roller"
    "neovim"
    "otf-font-awesome"
    "pavucontrol"
    "pipewire"
    "pipewire-audio"
    "pipewire-pulse"
    "playerctl"
    "power-profiles-daemon"
    "rofi"
    "swaync"
    "tailscale"
    "ttf-jetbrains-maple-mono-nf-xx-xx"
    "unityhub"
    "waybar"
    "wev"
    "wireplumber"
    "wireguard-tools"
    "wl-clipboard"
    "woff2-font-awesome"
    "yazi"
    "yt-dlp"
    

    # for funs
    "asciiquarium"
    "cava"
    "cbonsai-git"
    "cmatrix"
    "pipes.sh"
    "pinta"
    "rpi-imager"
    "spotify"
    "spicetify-cli"

)

echo "installing packages"
paru -S --noconfirm "${Packages[@]}"

echo "packages installed"
echo "initiating rice"

echo "cloning from repo"
cd
git clone https://github.com/lyraxh/cuddly-octo-enigma

echo "creating config"
mkdir -p ~/.config
cd ~/cuddly-octo-enigma
cp -r hypr kitty rofi waybar yazi ~/.config/
rm -rf ~/cuddly-octo-enigma

echo "done"
