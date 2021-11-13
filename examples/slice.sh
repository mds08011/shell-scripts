#!/usr/bin/env bash

#Slicing Strings

#Unlike many programming languages, bash doesn’t provide any in-built function for cutting portions of a string. However, the below example demonstrates how this can be done using parameter expansion.

#This script should print out “Learn Bash Commands” as its output. The parameter expansion takes the form ${VAR_NAME:S:L}. Here, S denotes starting position, and L indicates the length.

Str="Learn Bash Commands from UbuntuPit"
subStr=${Str:0:20}
echo $subStr

