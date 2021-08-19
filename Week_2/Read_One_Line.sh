#!/bin/bash

#read -p 'username : ' user_var
read -sp 'password : ' pass

pass_var=$(pass | sha256sum)
echo
#echo "userinput : $user_var"
echo "passwordinput : $pass_var"

#ass_var=$pass | sha256sum
#echo $pass
#echo $pass_var