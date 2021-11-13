#!/usr/bin/env bash

# The If Statement

# If statements are the most common conditional construct available in Unix shell scripting, they take the form shown below.
# if CONDITION 
# then
# STATEMENTS
# fi

# The statements are only executed given the CONDITION is true. The fi keyword is used for marking the end of the if statement. A quick example is shown below.

echo -n "Enter a number: "
read num

if [[ $num -gt 10 ]]
then
echo "Number is greater than 10."
fi

# The above program will only show the output if the number provided via input is greater than ten. The -gt stands for greater than; similarly -lt for less than; -le for less than equal; and -ge for greater than equal. In addition, the [[ ]] are required.