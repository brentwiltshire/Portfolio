#!/bin/bash

# Trying to create for & do loop
# Want to the output to be: 
#FRUIT: Apple
#FRUIT: Mango
#FRUIT: Strawberry & Orange and Banana

fruit='Apple Mango Strawberry Orange Banana'

#echo $fruit

for fruit in $fruit
do 
echo "FRUIT: $fruit"
done

echo All done
exit 0