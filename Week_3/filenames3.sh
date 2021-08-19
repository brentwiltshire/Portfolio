#!/bin/bash

#Exercise details
#Write a script named "filenames.sh" that goes through each line of a file.
#If that line contains a valid filename, print “That file exists”.
#If that line contains a directory name, print “That’s a directory”.
#Otherwise print “I don’t know what that is!”.
#Test your new script on “filenames.txt”.

#Resources on GREP
#   https://www.softwaretestinghelp.com/grep-command-in-unix/
#   https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/
#   https://stackoverflow.com/questions/25751270/loop-through-text-file-and-execute-if-then-statement-for-each-line-with-bash
#   https://unix.stackexchange.com/questions/104641/how-can-i-suppress-output-from-grep-so-that-it-only-returns-the-exit-status


#11 Aug - This works in getting the 6 rows
rows=$(cat "filenames.txt") #Extracts text in file and compares to CLI input
echo $rows
#folder_contents= ls
#folder_contents2=($(ls -d */))  

#echo "$folder_contents"
#echo "$rows"

#array=(ww/* ee/* qq/*)
#printf "%s\n" "${array[@]}"
# found to loop through directory to create a list
for FILE in *; 
do 
#12 Aug - 9:30am - This seems to be gettign the file name. 
# for loop gets files in current directory
# grep command searches the file listed in the against FILES variable.
# -q in GREP command puts output as silent as need to Echo additional text.
if  grep -q "$FILE" filenames.txt ; 
then echo "$FILE - That's a file"
#echo " $FILE +++ $rows"
#if [ "$rows" == "$FILE" ]; then
# echo "$rows - That file exists"; 
#elif grep -q "$rows" filenames.txt ; 

else echo "$FILE - I don't know what that is!"
#then echo "$rows - That's a directory"

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

