#!/bin/sh
# Script to install Bazzite Arch kernel, create a systemd service to disable MCU Powersave, and run additional setup

# Step 1: Install Bazzite Arch Kernel
wget https://github.com/hhd-dev/kernel-bazzite/releases/download/6.11.3-303.2/linux-bazzite-6.11.3.300.bazzite.fc41-1-x86_64.pkg.tar.zst
sudo pacman -U linux-bazzite-6.11.3.300.bazzite.fc41-1-x86_64.pkg.tar.zst

# Step 2: Run additional setup command
curl -L https://github.com/hhd-dev/hhd/raw/master/install.sh | bash

# Step 3: Create a systemd service to disable MCU Powersave

SERVICE_FILE="/etc/systemd/system/mcu_powersave.service"

echo "[Unit]
Description=Disable MCU Powersave

[Service]
ExecStart=/bin/sh -c 'echo 0 > /sys/devices/platform/asus-nb-wmi/mcu_powersave'

[Install]
WantedBy=multi-user.target" | sudo tee $SERVICE_FILE

# Reload systemd manager configuration
sudo systemctl daemon-reload

# Enable the service to start on boot
sudo systemctl enable mcu_powersave.service

# Start the service now
sudo systemctl start mcu_powersave.service

echo "MCU Powersave setting has been enabled and will apply at every boot."
