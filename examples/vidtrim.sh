# Shell script to trim a video with mencoder or ffmpeg
# http://giantdorks.org/alain/shell-script-to-trim-a-video-clip-with-avconv-ffmpeg-or-mencoder/

#!/bin/bash

Usage()
{
 cat << EOF
 Usage examples:

   $(basename $0) video.avi 00:30:00 00:40:00
   $(basename $0) video.avi 00.30.00 00.40.00

 Optionally, can also provide '-a', '-f' or '-m' as the 4th arg to force avconv,
 ffmpeg or mencoder.

EOF
}

if [ "$#" -lt "3" ]; then
  Usage
  exit 1
 else
  InFile=$1
  StartTime=$2
  StopTime=$3
fi

CheckInput()
{
 if ! [ -r $InFile ]; then
   echo "ERROR: input file \"$InFile\" not readable"
   exit 1
 fi

 for time in StartTime StopTime; do
   if [ "$(echo ${!time} | grep -Eo "(:|\.)" | wc -l)" -ne "2" ]; then
     echo "ERROR: check $time time format, expecting cols or dots e.g.:"
     echo "00:20:00 or 00.20.00"
     exit 1
   fi

   if [ "$(echo ${!time} | sed -r 's/(:|\.)//g' | wc -c)" -ne "7" ]; then
     echo "ERROR: check $time time format, expecting six numeric digits, e.g.:"
     echo "00:20:00 or 00.20.00"
     exit 1
   fi  
 done

 start=$(echo "$StartTime" | sed -r 's/(:|\.)//g')
 stopt=$(echo "$StopTime" | sed -r 's/(:|\.)//g')

 if [ "$start" -ge "$stopt" ]; then
   echo "ERROR: stop time must be later than start time. I got:"
   echo "  start = $StartTime"
   echo "  stop  = $StopTime"
   exit 1
 fi
}

CalcDuration()
{
 # NOTE: won't work with clips longer than 24 hours. Never had
 # one of those, so not an issue, but if this changes, switch
 # to date handling as in the calc-duration script.
 time1="$(echo $StartTime | sed 's/\./:/g')"
 time2="$(echo $StopTime  | sed 's/\./:/g')"
 date1="$(date +%F)"
 date2="$(date +%F)"
 time1sec=$(date --date="$date1 $time1" +%s)
 time2sec=$(date --date="$date2 $time2" +%s)
 secdiff=$(( $time2sec-$time1sec ))
 h=$(( secdiff / 3600 ))
 m=$(( ( secdiff / 60 ) % 60 ))
 s=$(( secdiff % 60 ))
 Duration=$(printf "%02d:%02d:%02d\n" $h $m $s)
}

ConstructFileName()
{
 ext=$(echo "$InFile" | egrep -io "\.[a-z0-9]{2,4}$")
 main=$(echo "$InFile" | sed "s/$ext$//")
 OutFile=$main.trim.$start-$stopt$ext
}

aTrim()
{
 avconv=$(which avconv)
 if [ -x "$avconv" ]; then
   echo "INFO: using avconv.."
   avconv -i $InFile -ss $time1 -t $Duration -codec copy -threads auto $OutFile
   echo "=================================================="
   echo "command used was:"
   echo "avconv -i $InFile -ss $time1 -t $Duration -codec copy -threads auto $OutFile"
   exit 0
 else
   echo "ERROR: avconv not available.."
 fi
}

fTrim()
{
 ffmpeg=$(which ffmpeg)
 if [ -x "$ffmpeg" ]; then
   echo "INFO: using ffmpeg.."
   ffmpeg -i $InFile -ss $time1 -t $Duration -vcodec copy -acodec copy $OutFile
   echo "=================================================="
   echo "command used was:"
   echo "ffmpeg -i $InFile -ss $time1 -t $Duration -vcodec copy -acodec copy $OutFile"
   exit 0
 else
   echo "ERROR: ffmpeg not available.."
 fi
}

mTrim()
{
 mencoder=$(which mencoder)
 if [ -x "$mencoder" ]; then
   echo "INFO: using mencoder.."
   mencoder -ss $time1 -endpos $Duration -oac mp3lame -ovc copy $InFile -o $OutFile
   echo "=================================================="
   echo "command used was:"
   echo "mencoder -ss $time1 -endpos $Duration -oac mp3lame -ovc copy $InFile -o $OutFile"
   exit 0
 else
   echo "ERROR: mencoder not available.."
 fi
}


echo -e "\nchecking input.."
CheckInput
echo "all good"

echo -e "\ncalculating duration from start/stop times.."
CalcDuration
echo "clip duration is $Duration"

echo -e "\nconstructing file name for output.."
ConstructFileName
echo "trimmed video will be saved as $OutFile"

echo -e "\ntrimming video.."
echo "=================================================="

if [ "$4" == "-a" ]; then
  aTrim
elif [ "$4" == "-f" ]; then
  fTrim
elif [ "$4" == "-m" ]; then
  mTrim
else
  aTrim
  fTrim
  mTrim
fi