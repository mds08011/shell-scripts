#!/usr/bin/env bash
# reads txt tile in terminal
file='editors.txt'
while read line; do
echo $line
done < $file