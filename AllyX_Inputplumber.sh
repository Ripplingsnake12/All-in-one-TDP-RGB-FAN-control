#!/bin/bash
# A script to run multiple commands and automate a system setting

# Install discover and flatpak
sudo pacman -S discover flatpak

# Run decky installer script
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh

# Run PowerControl install script
curl -L https://raw.githubusercontent.com/mengmeet/PowerControl/main/install.sh | sh

# Run huesync install script
curl -L https://raw.githubusercontent.com/honjow/huesync/main/install.sh | sh

# Set mcu_powersave to 1
echo 1 | sudo tee /sys/devices/virtual/firmware-attributes/asus-armoury/attributes/mcu_powersave/current_value


