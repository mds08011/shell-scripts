#!/bin/csh -f 
#--------- cntfiles: count # of files and subdirs
#   usage: cntfiles [dir]
#
set dir = "$1" 
#
if ( "$1" == "" ) then
	echo " --- cntfiles:  Counting # of files and subdirs in ./ :"
	echo ""
	set nfiles = `ls -l | grep "^-"| wc -l` 
	set ndirs  = `ls -l | grep "^d"| wc -l` 
	echo " ---> ./ contains:  $nfiles files and  $ndirs subdirs"
else
	echo " --- Counting # of files and dirs in $dir dir tree:"
	echo ""
	set nfiles = `ls -l $dir/* | grep "^-"| wc -l` 
	set ndirs  = `ls -l $dir/* | grep "^d"| wc -l` 
	echo " ---> $dir contains:  $nfiles files in  $ndirs subdirs"
endif

### based on: Unix Tip #499- May 14, 1998
### http://www.ugu.com/sui/ugu/show?tip.today
