#!/bin/csh -f 
#
#-------- delete blank lines from a file
#  usage: clnblanklines file
#
set fn="$1" 
#
mv -f $1 "$fn".was
cat "$fn".was | awk '$0!~/^$/ {print $0}' > $fn

echo "	---> remove" "$fn".was  "?"
rm  -i "$fn".was

### based on Unix Tip #508- May 23, 1998

### see also: clnduplines
