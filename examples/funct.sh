#!/usr/bin/env bash

#Functions in Bash

#Here we’ve added two numbers just like before. But here, we’ve done the work using a function called Add. So whenever you need to add again, you can just call this function instead of writing that section again.

As with any programming dialect, functions play an essential role in Linux shell scripts. They allow admins to create custom code blocks for frequent usage. The below demonstration will outline how functions work in Linux bash scripts.

#!/bin/bash
function Add()
{
echo -n "Enter a Number: "
read x
echo -n "Enter another Number: "
read y
echo "Adiition is: $(( x+y ))"
}

Add

