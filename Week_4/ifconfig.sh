#!/bin/bash

# Week 4.5 - Tute video on sed commands
#Looking at network commands

# ifconfig - Brings up network information
# ip - Can also input commands similar to ifconfig which is being phased out
# ip address - Same as ip with address detail

#Example to output ifconfig. Three methods.
#Method 1
#This example takes the output of ifconfig and puts it into sed.
#ifconfig | sed 's/inet/IP address:/'

#Method 2
# Same as above but stores info in variable 
#sed 
net_info="$(ifconfig | sed 's/inet/IP address:/')"
echo "$net_info"

#Method 3
# Does the sed after the echo. Outputs unchanged ifconfig and then applies sed rule.
net_info2="$(ifconfig)"
echo "$net_info2" | sed 's/inet/IP address:/'

# Example 2 - Code to apply only on ipv4 address
# Method 1 - Brent - I added a space after inet and it only applied to instance with a space. 
net_info3="$(ifconfig)"
echo "$net_info3" | sed 's/inet /IP address:/'

# Method 2 - From lecture video - Added a filter to side of sed.
# '/inet / Filter to side of sed means 
# this is only going to apply to lines where inet space is present.
net_info4="$(ifconfig)"
echo "$net_info4" | sed '/inet / s/inet/IP address:/'

# Method 3 - Brent - Played around with filter and does work on other lines
# '/fix/ Filter to other inet intance in different line
# this is only going to apply to lines where 'fix' space is present.
net_info5="$(ifconfig)"
echo "$net_info5" | sed '/fix/ s/inet/IP address:/'

# Example 3 - Doing more than 1 sed on different parts
# To do this you need to add curly brace after filter and before sed replace command.
# add each replace command on a new line
net_info6="$(ifconfig)"
echo "$net_info6" | sed '/inet / {
    s/inet/IP address:/
    s/netmask/Subnet Mask:/
    s/broadcast/Broadcast Address:/
    }'

# Example 4 - Only displaying results changed
# -n          - Not sure entirely. Maybe just needed with p(Print)
# p   (Print) - At the end this just displays instances where inet 'space' are present. Must do it for the line.
net_info7="$(ifconfig)"
echo "$net_info7" | sed -n '/inet / {
    s/inet/IP address:/
    s/netmask/Subnet Mask:/
    s/broadcast/Broadcast Address:/
    p
    }' 

# Example 5 - Formatting sed extracted text
# \n    : This adds an enter to put on new line
# \t    : This adds tab to line it up nicely
net_info8="$(ifconfig)"
echo "$net_info8" | sed -n '/inet / {
    s/inet/IP address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/
    p
    }' 

# Example 6 - Using this output in a script rather than just print in terminal.
# Do this by adding the output into a variable

net_info9="$(ifconfig)"
addresses=$(echo "$net_info9" | sed -n '/inet / {
    s/inet/IP address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/
    p
    }')

#echo -e "The IP addresses on this computer are:\n $addresses"

