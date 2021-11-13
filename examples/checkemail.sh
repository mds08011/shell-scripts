# I've always had a thing for tsunamis (as in, un-naturally afraid of them, particularly for someone born in the midwest), so I wrote a cronjob to check to see if there was a new tsunami alert, and if so, email it to me. The code is old and doesn't entirely work, but it shouldn't be hard to refit.
#!/bin/bash

BASEDIR="/tmp"
NOW=`date +"%H%M-%d%m%Y"`
URL="http://wcatwc.arh.noaa.gov/message.txt"
OUTFILE="$BASEDIR/tsunami-msg-$NOW.txt"

if [ "$DEBUG" != "" ] ; then 
echo "BASEDIR: $BASEDIR"
echo "NOW: $NOW"
echo "URL: $URL"
echo "OUTFILE: $OUTFILE"
echo ""
echo ""
fi

mv $BASEDIR/curmd5.txt $BASEDIR/prevmd5.txt

wget -o /dev/null -O $OUTFILE "$URL"

md5sum $OUTFILE | awk '{print $1}' > $BASEDIR/curmd5.txt

if [ ! "`cat $BASEDIR/curmd5.txt`" == "`cat $BASEDIR/prevmd5.txt`" ] ; then 
	echo "New Tsunami Warning!"
	echo "===================="
	echo ""
	
	MAGNITUDE=`cat $OUTFILE  | grep "^[ ]*MAGNITUDE" | awk '{print $3}'`
	TIME=`cat $OUTFILE |  grep -A2 "^[ ]*TIME" | grep UTC | sed 's/^[ ]*//g'`
	LOCATION=`cat $OUTFILE |  sed -n '/LOCATION/,/DEPTH/p' | grep -v "^[ ]*DEPTH" | sed 's/^[ ]LOCATION//g' | sed 's/^[ ]*-//g'`

	echo "Magnitude: $MAGNITUDE"
	echo ""
	echo "Time: $TIME"
	echo ""
	echo "Location: "
	echo "$LOCATION"
	echo ""
	cat $OUTFILE | elm -s "New Tsunami Warning" email@address 
else  
	echo "No new tsunami warning"
fi

rm -f $OUTFILE