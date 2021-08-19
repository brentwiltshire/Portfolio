#!/bin/bash

while true; do

read -p "Type in a website URL to download or type "exit" to quit: " response

case $response in 
1) 



if [ "$response" == "exit" ]; then
echo 
echo "Good-bye"
fi
exit 0 