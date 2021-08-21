#!/bin/bash

# Version control
# 12 Aug - Removed working comments from passwordcheck.sh
# 12 Aug - Fixed bug in hard coding Extract file

# Colour variables
black='\033[30m'
red='\033[31m'
green='\033[32m'
brown='\033[33m'
blue='\033[34m'
purple='\033[35m'
cyan='\033[36m'
grey='\033[37m'
bold='\033[1m'
reset_colour='\033[0m'

read -sp "Enter password: " pass # hide value and makes it variable
pass_var=$(echo $pass | sha256sum)
extract_file="/home/brent/Student/Scripts/Portfolio/Week_2/Tue5/secret.txt"
stored_pass=$(cat "$extract_file") #Extracts text in file and compares to CLI input

if [ "$pass_var" == "$stored_pass" ]; then 
   echo -en "$green"
   echo "Access Granted"
else 
   echo -en "$red"
   echo "Access Denied"
   exit 1
fi

# Create variables
option_1=1
option_2=2
option_3=3
option_4=4
option_5=5
option_6=6
option_7=7
option_8=8

while :; #have to add semicolon 
do
   echo -en "$blue"
   echo ""
   echo "Select an option"
   echo "  $option_1 - Create a folder"
   echo "  $option_2 - Copy a folder"
   echo "  $option_3 - Set a password"
   echo "  $option_4 - Calculator"
   echo "  $option_5 - Create Week Folders"
   echo "  $option_6 - Check Filenames"
   echo "  $option_7 - Download a File"
   echo "  $option_8 - Exit"
   echo -en "$purple"
   read -p "Enter the number option you want to select: " option
   echo -en "$reset_colour"
   case $option in
      [1] )
        echo "You have selected option $option_1 - Create a folder"
        source /home/brent/Student/Scripts/Portfolio/Week_2/Folder_Maker.sh
        ;;
      [2] )
        echo "You have selected option $option_2 - Copy a folder"
        source /home/brent/Student/Scripts/Portfolio/foldercopier.sh
        ;;
      [3] )
        echo "You have selected option $option_3 - Set a password"
        source /home/brent/Student/Scripts/Portfolio/Week_2/setPassword.sh
        ;;
      [4] )
        echo "You have selected option $option_4 - Calculator"
        source /home/brent/Student/Scripts/Portfolio/Week_3/calculator.sh
        ;;
      [5] )
         echo "You have selected option $option_5 - Create Week Folders"
         source /home/brent/Student/Scripts/Portfolio/Week_3/megafoldermaker.sh
         ;;
      [6] )
         echo "You have selected option $option_6 - Check Filenames"
         source /home/brent/Student/Scripts/Portfolio/Week_3/filenames5.sh
         ;;
      [7] )
         echo "You have selected option $option_7 - Download a File"
         source /home/brent/Student/Scripts/Portfolio/Week_3/webdownloader5.sh
         ;;
      [8] )
         echo "You have selected option $option_8. See you next time"
         break
         ;;
      #Used to obtain any invalid selections.
      * ) 
         echo -en "$red"
         echo "Invalid number, please input a number from the options available"
         echo -en "$reset_colour"
   esac
done
exit 0

# REFERENCES
# Execution of files:
#   https://stackoverflow.com/questions/27626800/run-bash-script-from-another-script-and-exit-first-script-while-second-is-runnin
#   https://askubuntu.com/questions/1339168/how-to-program-a-shell-script-to-start-another-script-and-use-the-same-variable
#   https://www.lostsaloon.com/technology/how-to-call-shell-script-sh-file-from-another-shell-script/

# Loops break and continue
#   https://tldp.org/LDP/abs/html/loopcontrol.html
#   https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_05.html
#   https://linuxize.com/post/bash-break-continue/#:~:text=Loops%20allow%20you%20to%20run,to%20control%20the%20loop%20execution.
