#!/bin/bash
# A script to automate the installation and configuration of a systemd service

# Create the service script
cat << 'EOF' > /usr/local/bin/set_mcu_powersave.sh
#!/bin/bash
# Script to set mcu_powersave to 1

echo 1 | sudo tee /sys/devices/virtual/firmware-attributes/asus-armoury/attributes/mcu_powersave/current_value
EOF

# Make the script executable
sudo chmod +x /usr/local/bin/set_mcu_powersave.sh

# Create the systemd service file
cat << 'EOF' | sudo tee /etc/systemd/system/set_mcu_powersave.service
[Unit]
Description=Set MCU Powersave at startup
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/set_mcu_powersave.sh
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the service
sudo systemctl enable set_mcu_powersave.service
sudo systemctl start set_mcu_powersave.service

# Check the service status
sudo systemctl status set_mcu_powersave.service
