#!/bin/bash

# Get the list of available output devices
devices=$(wpctl status | grep -E 'Output Device.*\[.*\]' | awk -F '[] []' '{print $NF}')

# Get the currently active default device
current_device=$(wpctl status | grep "Audio" | grep -oP '.*?(\[.*?\])' | awk -F '[] []' '{print $NF}' | head -n 1)

# Cycle through devices
next_device=$(echo "$devices" | grep -A1 "$current_device" | tail -n 1)
if [[ -z $next_device ]]; then
    next_device=$(echo "$devices" | head -n 1)
fi

# Set the next device as the default
device_id=$(wpctl status | grep "$next_device" | awk '{print $1}')
wpctl set-default "$device_id"

# Output the new default device for Waybar
echo "$next_device"
