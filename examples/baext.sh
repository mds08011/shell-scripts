#!/usr/bin/env bash

# The below example will apply a custom extension to all of the files inside a directory. Create a new directory and put some files in there for demonstration purposes. My folder has a total of five files, each named test followed by (0-4). I’ve programmed this script to add (.UP) at the end of the files. You can add any extension you want.
# Firstly, do not try this script from any regular directory; instead, run this from a test directory. Plus, you need to provide the directory name of your files as a command-line argument. Use period(.) for the current working directory.
#!/bin/bash
dir=$1
for file in `ls $1/*`
do
mv $file $file.UP
done