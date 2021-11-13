#!/usr/bin/env bash
# Parsing Date and Time
# The next bash script example will show you how to handle dates and times using scripts. Again, the Linux date command is used for getting the necessary information, and our program does the parsing.
year=`date +%Y`
month=`date +%m`
day=`date +%d`
hour=`date +%H`
minute=`date +%M`
second=`date +%S`
echo `date`
echo "Current Date is: $day-$month-$year"
echo "Current Time is: $hour:$minute:$second"