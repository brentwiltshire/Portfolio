#!/bin/bash

# WRITING BASIC FOO FUNCTION
# Method 1
function foo1
{
     echo "Foo1 - A basic function"
}

# Method 2
foo2 ()
{
# Input variables into a function
echo "Foo1 - A basic function" $1 $2 $3 
echo "All input variables in Foo2" $*
#  $*   This brings back all variables, $1 $2 and $3 
}
foo1
foo2 Hi There Everyone 2   #This is assigning the variables.


# FUNCTION TO RETURN VARIABLES
# Method 1
Return_Variable ()
{
    return $1
}

Return_Variable 25
Var1=$?
Var2=$? #Won't work because just used return variable

echo "Var1 =" $Var1
echo "Var2 =" $Var2



# Method 2
Return_Variable2 ()
{
    local Ret=$1 #Local variable that only exists in this function
    #The let function only works 
    #Eg if    let "20 = 25 - 5"
    let "Ret = Ret - 5"
    return $Ret
}

Return_Variable 25
Var1=$?
Var2=$? #Won't work because just used return variable
echo "Var1 =" $Var1
echo "Var2 =" $Var2

Return_Variable 19
Var3=$?
echo "Can we see the Local Variable Number 3" $Ret
echo "Var3 =" $Var3

# Method 3
Global_Return ()
{
    GlobalRet=0 #Assigning the variable
    let "GlobalRet = $1 + 1"
}

Global_Return 260  # Global return variable and not a local one
echo "GlobalReturn Variable =" $GlobalRet 
Global_Return 271  # A different way of 
echo "GlobalReturn Variable =" $GlobalRet 


