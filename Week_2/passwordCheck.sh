#!/bin/bash

#Step 1 - Ask user to type secret password
#Step 2 - Check user's password against the hash stored in secret.txt
#Step 3 - If correct, print "Access Granted"
#Step 4 - If incorrect, print "Access Denied"

#Step 1 - Ask user to type secret password
####### Difficult storing entered text with hash
read -sp "Enter password: " pass # hide value and makes it variable

#11 Aug - Change this variable pass_var="$($pass | sha256sum)"
pass_var=$(echo $pass | sha256sum)
#pass_var= "$pass" | sha256sum
#echo $pass
echo $pass_var
#Tried incorrect ways of trying to extract text in file to variable.
#echo cat "Tue4/secret.txt" stored_pass #:  stored_pass # Display the SHA password stored in the txt file.
#'cat Tue4/secret.txt : ' stored_pass
#stored_pass="cat Tue4/secret.txt"
#7 Aug - Found format in Quiz 1 example. 
extract_file="Tue5/secret.txt"
stored_pass=$(cat "$extract_file") #Extracts text in file and compares to CLI input
echo  $stored_pass
#echo cat Tue4/secret.txt stored_pass 
#Step 3 - If correct, print "Access Granted"
# have to use != to compare strings rather than comparing integers.
if [ "$pass_var" == "$stored_pass" ]; then 
# spacing needs to be one space either side of the bracket
# variable needs to be in quotation marks
    echo "Access Granted"
else 
    echo "Access Denied"
fi
exit 0