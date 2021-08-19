#!/bin/bash

read -p "type the name of the folder you would like to create" folderName 
      
mkdir "$folderName" # Variable to input line 3 foldername

read -sp 'password : ' pass_var # -sp hides input of password
cd "$folderName" # Changes directory to folder created in line 5
#11 Aug - Updated hash. Was an incorrect echo creating wrong hash.
echo $pass_var | sha256sum >./secret.txt 
# > command outputs variable input at line 7 into a text file.
# pipe causes output of the echo command to be sent to the input of the 'sha256sum' command
exit 0
