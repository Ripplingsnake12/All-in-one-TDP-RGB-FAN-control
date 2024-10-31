#!/bin/sh
# Script to install Bazzite Arch kernel, run additional setup, and update systemd configuration for MCU Powersave

# Step 1: Install Bazzite Arch Kernel
wget https://github.com/hhd-dev/kernel-bazzite/releases/download/6.11.5-310/linux-bazzite-6.11.5.310.bazzite.fc41-1-x86_64.pkg.tar.zst
sudo pacman -U linux-bazzite-6.11.5.310.bazzite.fc41-1-x86_64.pkg.tar.zst

# Step 2: Run additional setup command
curl -L https://github.com/hhd-dev/hhd/raw/master/install.sh | bash

# Step 3: Update the existing override.conf file with necessary environment variables

CONFIG_FILE="/usr/lib/systemd/system/hhd@.service.d/override.conf"

echo "[Service]
Environment=\"HHD_PPD_MASK=1\"
Environment=\"HHD_ALLY_POWERSAVE=1\"
Environment=\"HHD_HORI_STEAM=1\"" | sudo tee $CONFIG_FILE

# Reload systemd manager configuration
sudo systemctl daemon-reload

# Enable and start the service for the current session (optional)
# Replace `hhd@YOUR_INSTANCE` with the actual instance name if needed
sudo systemctl enable hhd@YOUR_INSTANCE.service
sudo systemctl start hhd@YOUR_INSTANCE.service

echo "Bazzite kernel installed, additional setup completed, and systemd configuration updated."




