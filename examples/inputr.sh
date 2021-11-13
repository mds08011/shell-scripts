#!/usr/bin/env bash

# Receive Input from User

# Getting user input is crucial to implement user interaction in your scripts. The below shell script example will demonstrate how to receive user input within a shell program.

echo -n "Enter Something:"
read something

echo "You Entered: $something"

# So, the reading construct, followed by a variable name, is used for getting user input. The input is stored inside this variable and can be accessed using the $ sign.