#!/bin/bash

echo "Entity , Month , Year "

awk 'BEGIN {
    FS=":";
    print "___________________";
    print "| \033[34mEntity\033[0m | \033[34mIP\033[0m |";
    }
    {
     printf("| \033[33m%-45s\033[0m | \033[35m%-10s\033[0m | \033[35m%-1s\033[0m |\n", $1, $2, $3);   
    }
    END {
        print("_____________");
        printf "There are %d major cyber breaches matching your search parameters selection total!\n", NR;

    }' Awk_test.txt