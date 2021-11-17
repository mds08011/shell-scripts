#!/usr/bin/posix/sh
#
# !/bin/sh  ( set -A   needs the posix/sh on alpha)

# Shell script to generate all characters from # \0000 to \0377
# (octal format)
# Created by Declan.Forde@bk.bosch.de

echo
echo "	Octal values of character set: "  '\\0xxx'
echo " "
loop1='0 1 2 3' 
loop2='0 1 2 3 4 5 6 7'
set -A array 0 1 2 3 4 5 6 7

echo "     ${array[0]}   ${array[1]}   ${array[2]}   ${array[3]}\
    ${array[4]}   ${array[5]}   ${array[6]}   ${array[7]} "
echo

for i in $loop1
do
  for j in $loop2
  do
   echo "$i$j   \0$i$j${array[0]}   \0$i$j${array[1]}\
   \0$i$j${array[2]}   \0$i$j${array[3]}   \0$i$j${array[4]}\
   \0$i$j${array[5]}   \0$i$j${array[6]}   \0$i$j${array[7]}"
  done
done

echo
echo "     ${array[0]}   ${array[1]}   ${array[2]}   ${array[3]}\
   ${array[4]}   ${array[5]}   ${array[6]}   ${array[7]} "
echo

echo ---- Octal values of character set:  '\\0xxx'
echo ---- e.g. echo '\\0247'  will print: "\0247"

# based on:	Unix Tip #470- April 15, 1998
#		http://www.ugu.com/sui/ugu/show?tip.today
# Ever needed an accent or umlaut, but your keyboard doesn't
# support foreign characters?  Use:
# echo "\0(Octal Value of Character) "
