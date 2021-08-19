#!/bin/bash

val_a=3
val_b=3

# -eq or equal to demo

if [ "$val_a" != "$val_b" ]; then 
# spacing needs to be one space either side of the bracket
# variable needs to be in quotation marks
    echo "Same number"
else 
    echo "Different number"
fi

# Can use the same for 
# -ne in not equal to
# -gt is greater than
# -ge is greater than or equal to
# -lt is less than
# -le is less than or equal to