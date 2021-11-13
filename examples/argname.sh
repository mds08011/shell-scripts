#!/usr/bin/env bash

#Getting Arguments with Names

#The below example shows how to get command-line arguments with their names.

for arg in "$@"
do
index=$(echo $arg | cut -f1 -d=)
val=$(echo $arg | cut -f2 -d=)
case $index in
X) x=$val;;
Y) y=$val;;
*)
esac
done
((result=x+y))
echo "X+Y=$result"

#
#
#Name this script test.sh and call it as shown below.

#$ ./test.sh X=44 Y=100

#It should return X+Y=144. The arguments here are stored inside ‘$@‘ and the script fetches them using the Linux cut command.
