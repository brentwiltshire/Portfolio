#!/bin/bash

# Intent is to display formatted text from body of system information text.

# Running IpInfo.sh script  
source /home/brent/Student/Scripts/Portfolio/Week_4/IpInfo.sh

# Use of SED to display only the lines with 'IP Address' on them
IP_addresses=$(echo "$addresses" | sed -n '/IP Address/ {
    s/IP address/""/
    p
}')

echo -e "Displaying just IP addresses of network address: \n$IP_addresses"
exit 0

# REFERENCES
#   https://linuxize.com/post/how-to-use-sed-to-find-and-replace-string-in-files/