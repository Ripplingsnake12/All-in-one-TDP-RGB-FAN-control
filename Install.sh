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
# Install deckyplumber to help with inputplumber controller switching 

curl -L https://github.com/aarron-lee/DeckyPlumber/raw/main/install.sh | sh


# A script to download and install steam-powerbuttond

# Download the repository
git clone https://github.com/ShadowBlip/steam-powerbuttond.git

# Navigate to the directory
cd steam-powerbuttond

# Run the install script
./install.sh
