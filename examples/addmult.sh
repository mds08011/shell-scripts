#!/usr/bin/env bash

#Adding Multiple Values

#You can use loops to get multiple user input and add them to your script. The following examples show this in action.
#However, omitting the (( )) will result in string concatenation rather than addition. So, check for things like this in your program.
sum=0
for (( counter=1; counter<5; counter++ ))
do
echo -n "Enter Your Number:"
read n
(( sum+=n ))
#echo -n "$counter "
done
printf "\n"
echo "Result is: $sum"

