#!/bin/bash
# v 0.0.2
# It grabs stock price changes from Yahoo finance...probably against the terms of using the site...it also colors the output based on how the stock did.

STOCK=$1    

if [ "$STOCK" == "" ] ; then 
   echo "Usage: $0 <SYMBOL>"
   echo "where SYMBOL is the ticker symbol, according to Yahoo Finance"
   echo ""
   exit
fi

UNISTOCK=`unicode.sh $STOCK`
LINE=$(lynx --dump "http://finance.yahoo.com/q?s=$UNISTOCK" | grep $(echo $UNISTOCK | sed s/%..//g)\))
if [ "$LINE" == "" ] ; then 
   echo "Sorry. $STOCK is not a recognised security at Yahoo Finance"
   exit
fi

LTRIM=`lynx --dump "http://finance.yahoo.com/q?s=$UNISTOCK" | grep "[ ]*Change:"`


DIRECTION=`echo $LTRIM | awk '{print $2}'`

CHANGE=`echo $LTRIM | awk '{print $3}'`

if [ "$LTRIM" == "" ] ; then 
   CHANGE="0.00"
   DIRECTION=" "
fi

if [ "$DIRECTION" == "Up" ] ; then 
   DIRECTION="+"
   COLOR="32"
elif [ "$DIRECTION" == "Down" ] ; then 
   DIRECTION="-"
   COLOR="31"
fi

echo -en "\033[1m$STOCK: "
echo -en "\033[$COLOR m$DIRECTION$CHANGE"
echo -en "\033[0m"
echo ""