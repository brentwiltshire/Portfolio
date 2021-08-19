#!/bin/bash

#Running other code  
source /home/brent/Student/Scripts/Portfolio/Week_4/IpInfo.sh

#echo -e "IP addresses on this computer are:\n$addresses" 

#Trying to get Use sed to display only the lines with 'IP Address' on them

#Address_info="$addresses"
#echo "RUNNN $Address_info"

IP_addresses=$(echo "$addresses" | sed -n '/IP Address/ {
    s/IP address/""/
    p
    }')

echo -e "Displaying just IP addresses of network address: \n$IP_addresses"