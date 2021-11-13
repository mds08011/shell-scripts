#!/bin/bash
# unicode.sh
#
# Converts characters on the command line to unicode string
INSTRING=$@
INSTRING=`\
echo $INSTRING\
    | sed 's/\^/%5E/g'\
    | sed 's/\ /%20/g'\
    | sed 's/\+/%2B/g'`

echo "$INSTRING"