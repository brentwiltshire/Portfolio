#!/bin/bash

#Slight error with this. 

#Resources
# IF, Case comparisons
#   https://tldp.org/LDP/abs/html/comparison-ops.html
#   https://unix.stackexchange.com/questions/65310/case-how-to-implement-equal-or-less-or-greater-in-case-syntax
#   https://www.thegeekstuff.com/2010/07/bash-case-statement/

#This function prints a given error
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}

#This function will get a value between the 2nd and 3rd arguments
getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY> $3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1: "
    done
    return $REPLY
}

# While loop and case statement to go through input.
while :; 
do
    getNumber "Type a number between and including 1 and 100" 1 100
    guess_var=$?
    #if (( $guess_var > $correct )); then
    if [ "$guess_var" -ne "$correct" ] then
        echo "Your guess is too high"
    #elif 
    #    echo "Your guess is too Low"
    else
    break
fi
done

echo "Yeeww! Your guess is right"


# [1] )
# echo "You have selected option $option_1 - Create a folder"
# source /home/brent/Student/Scripts/Portfolio/Week_2/Folder_Maker.sh
# ;;



#echo "this is the start of the script"
#getNumber "please type a number between 1 and 10" 1 10
#echo "Thank mattte!"
#getNumber "please type a number between 50 and 100" 50 100
#echo "Thank mattte!"
exit 0