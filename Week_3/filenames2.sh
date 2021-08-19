#!/bin/bash

#Exercise details
#Write a script named "filenames.sh" that goes through each line of a file.
#If that line contains a valid filename, print “That file exists”.
#If that line contains a directory name, print “That’s a directory”.
#Otherwise print “I don’t know what that is!”.
#Test your new script on “filenames.txt”.

#11 Aug - This works in getting the 6 rows
#rows=$(cat "filenames.txt") #Extracts text in file and compares to CLI input

#folder_contents= ls
#folder_contents2=($(ls -d */))  

#echo "$folder_contents"
#echo "$rows"

#array=(ww/* ee/* qq/*)
#printf "%s\n" "${array[@]}"
# found to loop through directory to create a list
for FILE in *; 
do 
#12 Aug - 9:30am - This seems to be gettign the file name. Display slightly off.
if  grep "$FILE" filenames.txt ; then echo " - That's a file"
#echo " $FILE +++ $rows"
#if [ "$rows" == "$FILE" ]; then
# echo "$rows - That file exists"; 
fi;

 done
#folder_contents2= 

#echo $folder_contents
# echo "$rows"
# there are 6 rows of output

#for rows in $rows 
#do 

#echo $rows 

#done

#echo All done
exit 0

