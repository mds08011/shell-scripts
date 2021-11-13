#!/usr/bin/env bash

# Using echo to Print

# The echo command is used for printing out information in bash. It is similar to the C function ‘printf’ and provides many common options, including escape sequences and re-direction.

# Copy the below lines into a file called echo.sh and make it executable as done above.

echo "Printing text"
echo -n "Printing text without newline"
echo -e "\nRemoving \t special \t characters\n"

# Run the script to see what it does. The -e option is used for telling echo that the string passed to it contains special characters and requires extended functionality.