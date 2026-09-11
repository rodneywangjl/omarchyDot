#!/bin/bash
set -e

packages=(
    # caligula
    # dmidecode
    # dosfstools
    # gamescope
    # gitleaks
    # protonup-qt   (USE YAY)
    # perl-image-exiftool
    scx-scheds
    scx-tools
    spotify
    steam
    stow
    telegram-desktop
    yazi
    # ncdu
    # zsh
)

# Check if package is installed
is_installed() {
  pacman -Qi "$1" &>/dev/null
}

# Update package database
echo "Updating package database..."
sudo pacman -Sy

for pkg in "${packages[@]}"; do
  if pacman -Qi "$pkg" &>/dev/null; then
    echo "[SKIPPED] $pkg is already installed"
  else
    echo "[INSTALLING] $pkg..."
    sudo pacman -S --needed --noconfirm "$pkg" || echo "[WARNING] Failed to install $pkg"
  fi
done

echo "Installation complete. Reboot recommended for Hyprland."
