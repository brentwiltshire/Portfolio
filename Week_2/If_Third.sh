#!/bin/bash

# UV Index Calculator

    # 0-2 is Low (Min protection)
    # 3-7 is Med (Standard protection)
    # 8+ Extreme (Full protection)

read -p 'Enter a UV index value from 0 to 11: ' uvvalue
if [ "$uvvalue"  -le 2 ]; then
    echo "Min Protection"
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]; then  
# else if
# surround each test in double brackets
    echo "Med protection"
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]; then  # else if
    echo "High Protection"
else echo "Incorrect value"
fi
exit 0
