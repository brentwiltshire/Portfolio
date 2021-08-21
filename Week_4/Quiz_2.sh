#!/bin/bash

#Question 1
#Answer: Could be 6, but unsure
#number=20
#func()
# {
#    number=5
#}
#func
#(( number++ ))

#echo $?
#echo $number
#echo $2

#Question 2
#func_4 ()
# {
#    number=5
#    echo $(( number+number ))
# }
#func_4
#echo $?
#echo $number
#echo $1
#echo $2

#Question 4
#Answer could be 21, but unsure.
#number=20
#func_2()
# {
#    local number=5
#}
#func_2
#echo "(( number++ ))"

#echo $?
#echo $number
#echo $2

#Question 5
#calculate_volume ()
# {
#    echo "done"
#}
#Box=$(calculate_volume 5 6 12)
#echo "$2"

#Question 6
#Answer: 8 fairly certain
# Printf displays the next two decimals, but showing as .00
#x=$(( 3 + 21 / 4 ))
#echo "$x"
#printf "%0.2f\n" $x

#Question 8
#Answer:  fairly certain
# Printf displays the next two decimals, but showing as .00
#x=$(( 20 - 11 / 2 ))
#echo "$x"
#printf "%0.2f\n" $x

#Question 9
searchForItems()
{ 
   grep "items" $1
  }
# Wrong - searchForItems "items"
# Wrong - search "items" shoppinglist.txt
# Unsure, think it searched the file but that's all. 
# grep shoppinglist.txt
# Wrong - find -name searchForitems "shoppingList.txt"
#searchForItems "shoppingList.txt"

# Question 10
#greet_name()
# {
#    echo "Hello $1"
#}
#greet_jessie()
# {
#    echo "Hello Jessie"
# }
#echo "Hello everyone"
#greet_jessie 
#read -p "please type your name"
# greet_name "$REPLY"
# echo "Goodbye!"

#Question 12
#echo 'sample' | sed "s/p/c/g"

#echo 'sample' | 
#sed "s/^[the] cat sat on the [lmnop]at$/ /g"

#Maybe just MATCH..!
#echo 'The cat sat on the mat' | grep '^[the] cat sat on the [lmnop]at$'

#echo 'The cat sat on the mat' | grep '^T.*t$'

#echo 'The cat sat on the mat' | grep '&6e\ncatmat*$'

#echo 'The cat sat on the mat' | grep '^.cat.sat.on…mat$'
#echo 'The cat sat on the mat' | grep '^[aeiou]*cat.*mat$'

#Question 13
#grep "Start$" start_grep.txt

#Question 14 - 
#cat items.txt | grep -E "[[:digit:]]{3}"

#Question 15
#echo "The text is very important" | sed 's/is/is not/g'

#Question 16

#sed '8a\pluto' planets.txt

#Question 17
# No definitive answer
#/home/brent/Student/Scripts/Portfolio/Week_4/Q17.sh | sed -e '
#s/test$/toast/
#s/and //g
#'

#Question 18 and 19
#awk ' 
#BEGIN
# {
#print "Thing"
#}
# {
#print "Stuff"
#}
#END
# {
#print "Hi"
#}
#' ./input.txt

#Question 20
#awk '
##{
#    print $2
#}' input.txt