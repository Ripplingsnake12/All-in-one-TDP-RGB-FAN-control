
# Script to install HHD , run additional setup, and update systemd configuration for MCU Powersave


sudo pacman -S discover flatpak mesa-git
# Step 2: Run additional setup command
curl -L https://github.com/hhd-dev/hhd/raw/master/install.sh | bash

curl https://raw.githubusercontent.com/FakeMichau/fgmod/main/prepare.sh | bash -- 

3: Update the existing override.conf file with necessary environment variables

CONFIG_FILE="/usr/lib/systemd/system/hhd@.service.d/override.conf"

echo "[Service]
Environment=\"HHD_ALLY_POWERSAVE=1\"" | sudo tee $CONFIG_FILE

# Mask power profile daemon

sudo systemctl mask power-profiles-daemon


# Reload systemd manager configuration
sudo systemctl daemon-reload




