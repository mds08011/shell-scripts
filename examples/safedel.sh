#!/usr/bin/env bash
#Deleting Files

#The following program will demonstrate how to delete a file within Linux shell scripts. The program will first ask the user to provide the filename as input and will delete it if it exists. The Linux rm command does the deletion here.

#Let’s type in editors.txt as the filename and press y when asked for confirmation. It should delete the file.

echo -n "Enter filename ->"
read name
rm -i $name

