# Setup, and update systemd configuration for MCU Powersave TDP RGB Fans Install Discorver store and flatpak

curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
curl -L https://raw.githubusercontent.com/mengmeet/PowerControl/main/install.sh | sh
curl -L https://raw.githubusercontent.com/honjow/huesync/main/install.sh | sh


sudo pacman -S discover flatpak mesa-git

# Step 2: Install DLSS Enabler


curl https://raw.githubusercontent.com/FakeMichau/fgmod/main/prepare.sh | bash -- 


# Mask power profile daemon

sudo systemctl mask power-profiles-daemon


# Reload systemd manager configuration
sudo systemctl daemon-reload




