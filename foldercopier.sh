#!/bin/bash  

#Wed 4 August - CURRENTLY NOT WORKING - Getting errors
#./foldercopier.sh: line 8:     #copy: command not found
#./foldercopier.sh: line 10:     read: command not found
#./foldercopier.sh: line 12:     cp: command not found

read -p "type the name of the folder you would like to copy: " folderName 
    
#if the name is a valid directory 
      
if [ -d "$folderName" ]; then 
      
#copy it to new location 
      
read -p "type the name of the folder you would like to create: " newFolderName

cp -r "$folderName" "$newFolderName"   
      
else 
#otherwise print an error
 
 echo "I couldn't find that folder"  

exit 0 
      
fi 
     