#!/bin/bash

#Code from 4.4 Make use of sed

#Step 4 - Substitute command
sed 's/system/computer/' sampletext.txt 

#Step 5 - Updating the two 
# 'operating computers' doesn’t sound right so let’s add another substitution to remove it
# The second sed replaces operating with a space
sed -e 's/system/computer/; s/ operating//' sampletext.txt

#Step 6 - Output to new txt file
sed -e 's/system/computer/; s/ operating//' sampletext.txt > newtext.txt

