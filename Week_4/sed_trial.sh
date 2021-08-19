#!/bin/bash

# The syntax for sed is below. Adjust values as needed.
#Sed 's/regexp/replace/' file 

#Example 1 - Replaces 3 with 4000 only once a line. 
# Currently just replaces once each line. Default.
#sed 's/3/4000/' price_list.txt

#Example 2 - Adding what occurrence it needs to be replaced. 
# This is done in the forth bracket.
# This example will only replace the second instance of 3 in a line with 4000
#sed 's/3/4000/2' price_list.txt

#Example 3 - Adding to change the instance across all occurrences.
# You use g in the fourth bracket to mean global replace.
#sed 's/3/4000/g' price_list.txt

#Example 4 - To output the change to a new file
# Add > Updated_price_list to create a new file
#sed 's/3/4000/g' price_list.txt > updated_price_list.txt 

#Example 5 - Add -i to change it just in CLI in line. 
#sed 's/1/88/g' updated_price_list.txt 

#Example 6 - Editing a variable
# Not exatly working yet.
sed 's/colour=0ff/colour=on/g' updated_price_list.txt

#Example 7 - Replacing on location
#Instead of using / can use any other character to seperate
sed 's@1@999@g' updated_price_list.txt 

#Example 8 - Replacement of character at a particular point
# Need to build a regular expression
# -E means a regular expression I think.
# ^ Beginning of the string
# {5} This is looking for any character 5 times
# /1 leaves everything 
# , is what the = is being replaced with
# (.{5}) is the regular expression which needs to match. In the Sixth position...? 

sed -E 's/^(.{5})=/\1,/' updated_price_list.txt 