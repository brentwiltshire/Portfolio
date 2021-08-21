#!/bin/bash

# Intent is to use AWK to format user account information

grep -i '/bin/bash' /etc/passwd | awk 'BEGIN {
    FS=":";
    print "";
    print "| \033[1;96mUser_Name\033[0m           | \033[2;96mUser_ID\033[0m | \033[2;96mGroup_ID\033[0m | \033[2;96mHome\033[0m         | \033[2;96mShell\033[0m           |";
    print "|_____________________|_________|__________|______________|_________________|";
}
{
    printf("| \033[1;97m%-19s\033[0m | \033[97m%-7s\033[0m | \033[97m%-8s\033[0m | \033[97m%-12s\033[0m | \033[97m%-15s\033[0m |\n", $1, $3, $4, $6, $7);
}
END {
    print "|_____________________|_________|__________|______________|_________________|";
}'
exit 0

# REFERENCES
#   https://www.geeksforgeeks.org/awk-command-unixlinux-examples/
#   https://likegeeks.com/awk-command/