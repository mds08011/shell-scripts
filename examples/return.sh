#!/usr/bin/env bash
#Functions with Return Values

#One of the most fantastic functions is allowing the passing of data from one function to another. It is useful in a wide variety of scenarios. Check out the next example.

#Here, the output contains data received from the Greet() function.

function Greet() {

str="Hello $name, what brings you to UbuntuPit.com?"
echo $str
}

echo "-> what's your name?"
read name

val=$(Greet)
echo -e "-> $val"

