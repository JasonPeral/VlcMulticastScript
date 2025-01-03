#!/bin/bash

# Path to VLC 2.0 executable. Different from device to device as it's the path to vlc application
VLC_PATH="/Applications/VLC.app/Contents/MacOS/VLC"

# Path you want to use default without inputting udp field
DEFAULT_UDP="udp://@239.0.0.190:1234"

#Function to display information on how to use the script
usage() {
echo "Usage: $0 [udp://@<IP>:<PORT>]"
echo "Example: $0 udp://@239.255.2.2:5678"
exit 1
}

#Parameters needed on input to invoke the usage function
if [ "$#" -ne 1 ] || [ "$1" == "help" ]; then
	usage
fi

#Check if argument that is passed is a udp address and if not use default address that we hardcoded above 
if [ $# -gt 0 ]; then
    UDP_ADDRESS="$1"
else
    echo "No address provided. Using default: $DEFAULT_UDP"
    UDP_ADDRESS="$DEFAULT_UDP"
fi

# Launches VLC with the inputed address or default if nothing was inputted
echo "Launching VLC with address: $UDP_ADDRESS"
"$VLC_PATH" "$UDP_ADDRESS"
