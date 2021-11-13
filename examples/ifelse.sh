#!/usr/bin/env bash

# More Control Using If Else

# Combining the else construct with if allows much better control over your script’s logic. A simple example is shown below.

#!/bin/bash

read n
if [ $n -lt 10 ];
then
echo "It is a one digit number"
else
echo "It is a two digit number"
fi

# The else part needs to be placed after the action part of if and before fi.