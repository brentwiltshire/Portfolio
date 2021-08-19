#!/bin/bash

#Exercise details
#Write a script named "filenames.sh" that goes through each line of a file.
#If that line contains a valid filename, print “That file exists”.
#If that line contains a directory name, print “That’s a directory”.
#Otherwise print “I don’t know what that is!”.
#Test your new script on “filenames.txt”.

#Resources:
#   https://www.tutorialkart.com/bash-shell-scripting/bash-script-to-check-if-file-exists/
#   https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php
#   https://linuxize.com/post/how-to-read-a-file-line-by-line-in-bash/
#   https://stackoverflow.com/questions/10929453/read-a-file-line-by-line-assigning-the-value-to-a-variable
#   https://www.baeldung.com/linux/ifs-shell-variable
#   https://bash.cyberciti.biz/guide/$IFS
#   https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php
#   https://www.thegeekstuff.com/2010/07/bash-case-statement/

#   FILE command resource
#   https://stackoverflow.com/questions/8512462/looping-through-all-files-in-a-directory
#   https://www.digitalocean.com/community/tutorials/workflow-loop-through-files-in-a-directory


#11 Aug - This works in getting the 6 rows
rows=$(cat "filenames.txt") #Extracts text in file and compares to CLI input
echo $rows

#Files= ls
#echo "$Files"
while IFS= read line; do
    if [ -f "${line}" ]; then
        echo "$line - That's a file"
    elif [ -d "$line" ]; then
        echo "$line - That's a directory"
    else
        echo "$line - I don't know what that is!"
    fi
done < "filenames.txt"

#while IFS= read line;
#do
#echo "$line"
#if  [ -f "$line" ]; 
#then 
#echo "$line - That's a file"
#elif [ -d "$line" ]; 
#then 
#echo "$line - That's a directory"
#else
#echo "$line - I don't know what that is!"
#fi

#done < filenames.txt
#folder_contents= ls
#folder_contents2=($(ls -d */))  

#echo "$folder_contents"
#echo "$rows"

#array=(ww/* ee/* qq/*)
#printf "%s\n" "${array[@]}"
# found to loop through directory to create a list
#for FILE in *; 
#do 
#12 Aug - 9:30am - This seems to be gettign the file name. 
# for loop gets files in current directory
# grep command searches the file listed in the against FILES variable.
# -q in GREP command puts output as silent as need to Echo additional text.
#if  grep -q "$FILE" filenames.txt ; 
#then echo "$FILE - That's a file"
#echo " $FILE +++ $rows"
#if [ "$rows" == "$FILE" ]; then
# echo "$rows - That file exists"; 
#elif grep -q "$rows" filenames.txt ; 

#else echo "$FILE - I don't know what that is!"
#then echo "$rows - That's a directory"

#fi;

# done
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

