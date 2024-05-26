#!/bin/bash

# Function to set power profile based on TDP value
set_power_profile() {
    local profile=""
    local tdp=$1
    if (( tdp < 10 )); then
        profile="power-saver"
    elif (( tdp < 19 )); then
        profile="balanced"
    else
        profile="performance"
    fi
    powerprofilesctl set "$profile"
    echo "Current Profile: $profile"
}

# Function to set TDP using ryzenadj
set_tdp() {
    local tdp_value=$1
    sudo ryzenadj --stapm-limit=$((tdp_value * 1000)) --fast-limit=$((tdp_value * 1000)) --slow-limit=$((tdp_value * 1000))
    set_power_profile "$tdp_value"
}

# TDP Selection
tdp=$(zenity --scale \
    --title="TDP Selection" \
    --text="Select TDP (5-50W):" \
    --min-value=5 --max-value=50 --value=10 --step=1 \
)

# Set TDP and power profile
set_tdp "$tdp"
