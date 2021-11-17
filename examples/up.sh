#!/bin/csh -f
#
### up: g/unzip to screen  file.gz  OR  file.zip subfile
### 	uses  gunzip -c  OR  uznip -p  according to .ext
### 	 and  gv if it finds .ps.gz or .ps subfile inside .zip
### 	 and  tar tf if it finds .tar.gz 
### Usage: up file [subfile(of file.zip)]

###  5jul98 works great in all cases!  getting good at this !
### 17jul98 further enhancements; 
###	    bad csh on msr: can't find gunzip!,
###		gets into if(gz), use switch/case (works)

set BROWSER  = /ares/homes/vasili/.netscape/netscape

echo " "
set fn  = $1
set subfn  = $2

if( "$1" == "" ) then
  echo -n '---> Usage: up file [subfile](of f.zip).  Enter file name: '
  set fn = $<
endif

###.......check if file is readable:
#if( ! -r "$fn" ) then
#	echo "	--> $fn is not readable, exiting ..."
#	exit
#endif

###............extract the file extension:
	set ext  = `echo $fn | sed 's/^.*\.//'`
	echo "	ext = " $ext

###................. if no extension, use cat: default at the end
#if( "$ext" == "" || "$ext" == "$fn" ) then
#	echo "----> no .ext OR ext=filename ... Using cat | more:"
#	cat $fn | more -i
#	exit
#endif

###..................... if $ext = Z ..........
if( "$ext" == "Z" ) then
	uncompress $fn
	echo "  --- found .Z, converting to .gz ---"
	###..... get $rest=name-Z:
	set rest = `echo $fn | sed 's/\.Z$//'`
	gzip $rest
	set fn  = "$rest".gz
	set ext = "gz"
	echo ""
	echo "  --- now the file is: " "$rest".gz ---
	echo ""
endif

###--------------------- if $ext = gz or zip --------------------
switch ( "$ext" )

 case gz: 
 ###...................... if $ext = gz ..........
#if( "$ext" == "gz" ) then
   ###.....extract the next extension to see if it's .ps:
   ###..... first get $rest=name-gz:
   set rest = `echo $fn | sed 's/\.gz$//'`
   echo " name - gz = " $rest
   ###........now extract the extension of $rest:
   set ext2  = `echo $rest | sed 's/^.*\.//'`
   echo "ext2 = " $ext2
   ###......................... if .ps.gz use gv:
   if( "$ext2" == "ps" ) then
	echo " ---> found .ps.gz ; gunzip -c > /tmp/up.ps ..."
	## bad: shows only 1st page: gunzip -c $fn | gv -
	gunzip -c $fn > /tmp/up.ps
	echo " ---> starting gv viewer ..."
	gv /tmp/up.ps
	 #echo -n "---> try it w/ ghostview ?  enter y else will exit:"
	 #set yesno = $<
	 #if( "$yesno" == "y" ) then
	 #    ghostview /tmp/up.ps
	 #else
	 #    echo " .... OK, exiting ...."
	 #endif
	echo ""
     echo -n " ---> ? extract it ? ---> enter filename OR blank(exit): "
	  set tofile = $<
	if( "$tofile" != "" ) then
	    /bin/cp -p /tmp/up.ps $tofile
	endif
	/bin/rm -f /tmp/up.ps
   ###......................... if .tar.gz use tar tf:
   else if( "$ext2" == "tar" ) then
	echo "	---> found .tar.gz ; listing with tar tf ..."
	gunzip -c $fn > /tmp/up.tar
	tar tf /tmp/up.tar | more -i
	echo ""
	echo -n " ===> Now ENTER subfile to untar, OR blank(none): "
	  set subfn = $<
	if( "$subfn" != "" ) then
	   tar xf /tmp/up.tar $subfn
	   echo " --- extracted $subfn ---"
	   cat $subfn | more -i
	   echo ""
	   echo -n " --> to view, enter type: html ps OR blank(exit): "
	   set subftype = $<
	###......................... if $subfn is .html, use netscape:
	   if( "$subftype" == "html" ) then
		echo "	--- .html ; sending to netscape ..."
		set html = "$PWD/$subfn"
		$BROWSER -noraise -remote "openFile($html)"
	   endif
	   if( "$subftype" == "ps" ) then
		echo "	--- .ps ; sending to gv ..."
		gv $subfn
	   endif
	   echo ""
	   echo -n " --> ? save $subfn ? --> y _OR_ blank(delete):"
	   set yes = $<
	   if( "$yes" == "" ) then
		/bin/rm -f $subfn
		set dirnm = `dirname $subfn`
		if( "$dirnm" != "." ) then
			rmdir $dirnm
		endif
	   else
		echo  ""
		echo  " --->>>  $subfn not deleted  <<<---"
	   endif
	endif
	echo ""
	echo -n " ===> Untar the .tar ? "
	echo -n " ---> enter in which dir to untar it OR blank(exit):"
	  set dir = $<
	if( "$dir" != "" ) then
	   chdir $dir
	   echo "   --- untarring it in $dir ---"
	   tar xvof /tmp/up.tar
	endif
	/bin/rm -f /tmp/up.tar
   ###......................... if .html.gz use netscape:
   else if( "$ext2" == "html" ) then
	echo "	---> found .html.gz ; sending to netscape ..."
	gunzip -c $fn > /tmp/up.html
	set html = "/tmp/up.html"
	$BROWSER -noraise -remote "openFile($html)"
	echo ""
     echo -n " ---> ? extract it ? ---> enter filename OR blank(exit): "
	  set tofile = $<
	if( "$tofile" != "" ) then
	    /bin/cp -p /tmp/up.html $tofile
	endif
	/bin/rm -f /tmp/up.html
   else ##..................... else use gunzip -c:
	gunzip -c $fn | more -i
	echo ""
      echo -n " ---> ? extract it ? ---> enter filename OR blank(exit):"
	  set tofile = $<
	if( "$tofile" != "" ) then
	    gunzip -c $fn > $tofile
	endif
   endif
 exit
#endif
 breaksw

 case zip:
 ####...................... if $ext = zip ..........
#if( "$ext" == "zip" ) then
       set yesno  =  "y"
  while( "$yesno" == "y" )
     echo ""
     echo " ===> this is a .zip archive, look at the contents ..."
     echo ""
     unzip -l $fn | more -i
     echo ""
     echo -n " ===> Now ENTER subfile to view OR blank(exit): "
       set subfn = $<
     if( "$subfn" == "" ) then
	exit 
     endif
    ###.....extract the extension of subfile to see if it's .ps:
     #set extsub = `echo $subfn | sed 's/^.*\.//'`
     #echo " subfile extension = " $extsub
     ###......................... if .ps use gv:
     #if( "$extsub" == "ps" ) then
    ### OR test if file contains PS-Adobe (grep %!PS-Adobe fails):
    if( `unzip -pj $fn $subfn | grep "PS-Adobe"` != "" ) then
	echo " --- found .ps subfile ; starting gv viewer ..."
	## bad: shows only 1st page: unzip -pj $fn $subfn | gv -
        unzip -pj $fn $subfn > /tmp/up.ps
	gv /tmp/up.ps
	echo ""
      echo -n " ---> ? extract it ? ---> enter filename OR blank(exit):"
	  set tofile = $<
	if( "$tofile" != "" ) then
	    cp /tmp/up.ps $tofile
	endif
        /bin/rm -f /tmp/up.ps
    else ##..................... else (not .ps) use unzip -p:
	unzip -p $fn $subfn | more -i
	echo ""
     echo -n " ---> ? extract it ? ---> enter filename OR blank(exit): "
	  set tofile = $<
	if( "$tofile" != "" ) then
	    unzip -p $fn $subfn > $tofile
	endif
    endif
    ###---------------- view more subfiles ? ----------------
    echo ""
    echo -n " ---> ? another subfile ? ---> enter y : "
    set yesno = $<
  end #while
  echo " .... So you've seen enough ! ... exiting ..."
 exit
#endif
 breaksw

endsw

 ###..................... else ext =/= Z, gz, zip, ask:
 echo ""
 echo -n "----> ext = $ext : not Z , gz , zip ... Use cat ?  enter y: "
   set yesno = $<
 if( "$yesno" == "y" ) then
   cat $fn | more -i
   exit
 endif

### replaces:
### alias up   'gunzip -c \!* | less'
### alias uzp  'unzip  -p \!* | more'
### alias ughv 'gunzip -c \!* | ghostview -'
