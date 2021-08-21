#!/bin/bash

# Intent of this script is to allow user to type password to be checked against stored password.

# Step 1 - Ask user to type secret password with hidden input.
# Need to type password of dog
read -sp "Enter password: " pass # hide value and makes it variable
pass_var=$(echo $pass | sha256sum)

# Step 2 - Check user's password against the hash stored in secret.txt
# 7 Aug - Fixed variable format like format in Quiz 1 material. 
# Steped out variable steps as needed to debug script.
# Improvement could be to do variable in one step, have left for now.
extract_file="Tue5/secret.txt"
stored_pass=$(cat "$extract_file") #Extracts text in file and compares to CLI input

# Step 3 - If correct, print "Access Granted"
# Used == to compare strings rather than comparing integers.
# Spacing needs to be one space either side of the bracket
# Variable needs to be in quotation marks
if [ "$pass_var" == "$stored_pass" ]; then 
    echo "Access Granted"
    exit 0
else 
# Step 4 - If incorrect, print "Access Denied"
    echo "Access Denied"
    exit 1
fi
exit 0

# REFERENCES
# https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php