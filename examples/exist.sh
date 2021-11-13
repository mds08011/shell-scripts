#!/usr/bin/env bash
#Test File Existence

#The next shell script example shows how to check the existence of a file from bash programs.
#We are passing the filename as the argument from the command-line directly.

filename=$1
if [ -f "$filename" ]; then
echo "File exists"
else
echo "File does not exist"
fi
