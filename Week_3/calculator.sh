#!/bin/bash

# Resources

#   http://faculty.salina.k-state.edu/tim/unix_sg/bash/math.html
#   https://www.geeksforgeeks.org/simple-calculator-bash/

echo "Start of calculator"
read -p "What is the first number you would like calculated" first_var

#echo "what operation would you like calculated"
#echo -e "1. \e[34m +  two numbers"

read -p "What operation would you like completed. Options are + - * /" operation
read -p "What is the second number you would like calculated" second_var

# expr appears to work
#expr $first_var "$operation" $second_var

# using pipe bc also works
#echo $first_var "$operation" $second_var | bc 

# Next step, build on working conditions with colour

case $operation in 
#echo -e "\e[\033[34m Blue \e[m "
[+] )
#Below works as changing the colour as echo, but not to do the equation aswell. 
#    echo -e "\e[\033[34m $first_var "$operation" $second_var | bc \e[m"

#Trying with expression. Tried some variations and doesn't really work.
#echo -e \e[\033[34m expr $first_var "$operation" $second_var \e[m

;;

[-] )
echo $first_var "$operation" $second_var | bc 
;;

[*] )
echo $first_var "$operation" $second_var | bc 
;;

[/] )
echo $first_var "$operation" $second_var | bc 
;;

#THink this a wildcard to catch not valid operations
# now add colours + is blue, - is green * is red, / is purple
# blue is \033[34m

*) echo "Invalid operations, needs to be + - * /"
esac
 
 #  PATTERN_1)     STATEMENTS     ;; 
 
 # PATTERN_2)     STATEMENTS     ;; 
 
 # PATTERN_N)     STATEMENTS     ;; 
 
 # *)     STATEMENTS     ;; esac 

exit 0