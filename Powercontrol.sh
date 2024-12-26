# Setup, and update systemd configuration for MCU Powersave TDP RGB Fans Install Discorver store and flatpak

curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
curl -L https://raw.githubusercontent.com/mengmeet/PowerControl/main/install.sh | sh
curl -L https://raw.githubusercontent.com/honjow/huesync/main/install.sh | sh


sudo pacman -S discover flatpak mesa-git

# A script to download and install steam-powerbuttond

# Clone the repository
git clone https://github.com/ShadowBlip/steam-powerbuttond.git

# Navigate to the directory
cd steam-powerbuttond

# Run the install script
./install.sh


# Step 2: Install DLSS Enabler


curl https://raw.githubusercontent.com/FakeMichau/fgmod/main/prepare.sh | bash -- 


# Mask power profile daemon

sudo systemctl mask power-profiles-daemon


# Reload systemd manager configuration
sudo systemctl daemon-reload




