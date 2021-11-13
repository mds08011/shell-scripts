#!/usr/bin/env bash

# The For Loop

# The for loop is another widely used bash shell construct that allows users to iterate over codes efficiently. A simple example is demonstrated below.


for (( counter=1; counter<=10; counter++ ))
do
echo -n "$counter "
done

printf "\n"

# Save this code in a file named for.sh and run it using ./for.sh. Don’t forget to make it executable. This program should print out the numbers 1 to 10.