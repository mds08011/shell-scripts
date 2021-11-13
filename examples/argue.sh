#!/usr/bin/env bash

#Command Line Arguments

#Getting arguments directly from the command shell can be beneficial in a number of cases. The below example demonstrates how to do this in bash.

echo "Total arguments : $#"
echo "First Argument = $1"
echo "Second Argument = $2"

#Run this script with two additional parameters after its name. I’ve named it test.sh and the calling procedure is outlined below.
#
#$ ./test.sh Hey Howdy
#
#So, $1 is used for accessing the first argument, $2 for the second, and so on. Then, finally, the $# is used for getting the total number of arguments.