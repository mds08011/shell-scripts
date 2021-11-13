#!/usr/bin/env bash

# The Switch Construct

# The switch construct is another powerful feature offered by Linux bash scripts. It can be used where nested conditions are required, but you don’t want to use complex if-else-elif chains. Take a look at the next example.


echo -n "Enter a number: "
read num

case $num in
100)
echo "Hundred!!" ;;
200)
echo "Double Hundred!!" ;;
*)
echo "Neither 100 nor 200" ;;
esac

#The conditions are written between the case and esac keywords. The *) is used for matching all inputs other than 100 and 200.