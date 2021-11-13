#!/usr/bin/env bash

#Concatenating Strings

#String processing is of extreme importance to a wide range of modern bash scripts. Thankfully, it is much more comfortable in bash and allows for a far more precise, concise way to implement this. See the below example for a glance into bash string concatenation.
#The following program outputs the string “UbuntuPit is a great resource for Linux beginners.” to the screen.

string1="Ubuntu"
string2="Pit"
string=$string1$string2
echo "$string is a great resource for Linux beginners."