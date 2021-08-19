#!/bin/bash

# Exercise on 5.3 - Using Regex with sed

#Find every echo statement with text in double quotes that ends in an 
#exclamation mark in the guessing game from Week 4, and on those lines, 
#replace the first text that matches 'Correct' to say 'Right' instead.

#First we need a good regex to meet the requirements.

#Use grep to test out some regex until you find one that works.

#grep -r 'echo .*\".*!\"' 

cd /home/brent/Student/Scripts/Portfolio/Week_4
#Finds c in Guessing game, but need to work on echo part first
#sed "s/c/c/g" GuessingGame.sh

#Show only echo statements with text in double quotes that ends in an 
#exclamation mark.
#grep -r 'echo .*\".*!\"' GuessingGame.sh
#sed "s/you/mattteee!!/g"
# Add on those rows, change "Thank you to!" to thanks mate. 
# Made up change as didnt have correct in my echoes.


#Lecture material

#grep 'echo .*".*!"' ../Week_4/GuessingGame.sh 

#Instead of the grep, the sed searches for the echo statements and changes you to matte.
sed '/echo .*".*!"/ s/you/mattte/' ../Week_4/GuessingGame.sh 
     
     