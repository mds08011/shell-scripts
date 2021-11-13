#!/usr/bin/env bash

# The While Loop

# The while loop construct is used for running some instruction multiple times. Check out the following script called while.sh for a better understanding of this concept.

i=0

while [ $i -le 2 ]
do
echo Number: $i
((i++))
done

# So, the while loop takes the below form.

# while [ condition ]
# do
# commands 1
# commands n
# done

# The space surrounding the square brackets is mandatory.