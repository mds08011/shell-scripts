#!/usr/bin/env bash

# Adding Two Values

#It’s quite easy to perform arithmetic operations inside Linux shell scripts. The below example demonstrates how to receive two numbers as input from the user and add them.

#As you can see, adding numbers in bash is reasonably straightforward.
echo -n "Enter first number:"
read x
echo -n "Enter second number:"
read y
(( sum=x+y ))
echo "The result of addition=$sum"
