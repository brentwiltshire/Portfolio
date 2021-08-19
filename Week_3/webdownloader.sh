#!/bin/bash

# Resources

# If statement
#   https://linuxhint.com/compare_strings_bash/

# Break continue While loops
#   https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_05.html
#   https://linuxize.com/post/bash-break-continue/

#Write a script that does the following:
#   prompt the user to type a website URL to download or type “exit” to quit.”
#   prompt the user to type a download location
#   use wget to download the webpage requested by the user
#   repeat the process until the user types “exit”.
#   Hint: Use the wget command to download a file!

 


while : 
do
read -p "Type in a website URL to download or type "exit" to quit: " response

if [ "$response" == "exit" ]; then
echo 
echo "Good-bye"
exit 0
continue
fi
echo "$response"
#exit 0 


    read -p "Type in a download location or type "exit" at anytime to quit: " download_location

    if [ "$download_location" == "exit" ]; then
    echo 
    echo "Good-bye"
    exit 0
    elif [ -d "$download_location" ]; then
    #Currently only works for folders in current folder
    echo "Valid location"
    #elif 
    #echo 
    else #[ -d "$download_location" ]; then
    #Currently only works for folders in current folder
    echo "Invalid location"

    fi
    exit 0
    done





