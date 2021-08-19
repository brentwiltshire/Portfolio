#!/bin/bash

#5.1 Understand simple reguar expressions
# grep 

# This searches for needle in the haystack file.
grep needle haystack.txt

# Searches for all files for echo line. 
# Called searching recursively.
#grep -r echo

#Shows only lines that start with echo
grep -r "^echo"

#Shows only statements that contain an echo with a flag
grep -r 'echo -.*' 
     
#Shows only echo statements where the text is in double quotes and starts with an uppercase
grep -r 'echo .*\"[A-Z].*\"' 

#Show only echo statements with text in double quotes that ends in an exclamation mark.
grep -r 'echo .*\".*!\"' 
     
     
# 5.3 - Regex with sed
# Last g applies subtitute action more than once per line.

sed "s/c/C/g" bmfiles.txt

# To get rid of a comment.
# .*  Searches for a # then the full stop means anything else after the # and * means all charaters are removed.

sed "s/#.*//g" bmfiles.txt

# Adding to get rid of space before the comment
# \s*  The addition of this means to remove any space and trailing white space.
sed "s/\s*#.*//g" bmfiles.txt


# getting rid of both comments and also replaces lower case c with uppercase C
# Adding the ;  concatinates both sed replacement commands.
sed "s/\s*#.*//g;s/c/C/g" bmfiles.txt

# Either deleting, printing a line twice or stoping when a particular point in the file occurs.
# / d    will delete where cf appear together
# / p    will print the line twice whenever it finds cf
# / q    will quit the file when the first cf is found
sed "s/\s*#.*//g;  /cf/ q" bmfiles.txt

# Removing blank lines  
# Putting ^$ together means whenever there is a start and an end of a line, delete it
# ^  Beginning of a line
# $  Match all the end of the line
sed "s/\s*#.*//g;  /^$/ d" bmfiles.txt