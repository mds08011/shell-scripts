# shell-scripts

Source: https://www.ubuntupit.com/simple-yet-effective-linux-shell-script-examples/
1. Hello World
2. Using echo to Print
3. Using Comments
4. Multi-line comments
5. The While Loop
6. The For Loop
7. Receive Input from User
8. The If Statement
9. More Control Using If Else
10. Using the AND Operator
11. Using the OR Operator
12. Using Elif
13. The Switch Construct
14. Command Line Arguments
15. Getting Arguments with Names
16. Concatenating Strings
18. Extracting Substrings Using Cut
19. Adding Two Values
20. Adding Multiple Values
21. Functions in Bash
22. Functions with Return Values
23. Creating Directories from Bash Scripts
24. Create a Directory after Confirming Existence
25. Reading Files
26. Deleting Files
27. Appending to Files
28. Test File Existence
29. Send Mails from Shell Scripts
30. Parsing Date and Time
31. The Sleep Command
32. The Wait Command
33. Displaying the Last Updated File
34. Adding Batch Extensions
35. Print Number of Files or Directories
36. Cleaning Log Files
37. Backup Script Using Bash
38. Check Whether You’re Root
39. Removing Duplicate Lines from Files
40. System Maintenance
| Filename                | what it does                                                                                                                                                                        |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| alsa-info.sh            | Third-party. Dump your alsa configuration for easier debugging.                                                                                                                     |
| ansi2html.sh            | Third-party. pipe your colored shell output and get HTML out                                                                                                                        |
| archive-repo            | helper script to archive a repo on GitHub by pushing it to an orphan branch                                                                                                         |
| audible-strip-drm       | Strip Audible DRM from all Audible-MP4 files in the current directory                                                                                                               |
| aur.sh                  | dumb AUR helper, for when you don't have yay installed yet                                                                                                                          |
| avi2gif                 | convert an AVI file to a GIF at 10FPS. High quality                                                                                                                                 |
| backlight               | change keyboard brightness for laptops.                                                                                                                                             |
| blacklist2hosts.php     | convert a blacklist file (list of hosts) to a /etc/hosts format file with 0.0.0.0 prepended                                                                                         |
| bluetooth-pan.sh        | Run PAN on a specific bluetooth device.                                                                                                                                             |
| brightness.sh           | change display brightness. Works primarily on laptops                                                                                                                               |
| byzanz-record-region.sh | Third-party. Select a screen region and record it using byzanz                                                                                                                      |
| byzanz-record-window.sh | Third-party. Select a window and record it using byzanz                                                                                                                             |
| calibre_cleanup.php     | Old cleanup script for fixing namespace in EPUBs that won't open on my iPad                                                                                                         |
| cbr2pdf                 | Change a CBR(Comic Book RAR archive) to a PDF                                                                                                                                       |
| cbz2pdf                 | Change a CBZ(Comic Book ZIP archive) to a PDF                                                                                                                                       |
| cbz-convertor.sh        | Same as cbz.sh but also syncs them somewhere                                                                                                                                        |
| cbz.sh                  | Zips given directories into .cbz (Comic Book ZIP) archives of the smame name (eg "folder name.cbz").                                                                                |
| ccg                     | Third-party. Generate a control graph from a PHP codebase                                                                                                                           |
| changed.sh              | Search whole filesystem for changed files in the last $1 minutes                                                                                                                    |
| convertSTL.rb           | Third-party. STL files support binary and ascii encodings. This helps convert b/w them                                                                                              |
| cpw                     | Third-party. build an array of all cpw procs for this user that aren't this one.                                                                                                    |
| cwdterm.sh              | Picks a sensible-terminal, used by i3. Currently forces alacritty.                                                                                                                  |
| djvu2pdf                | Third-party. Convert a DJVU file to PDF                                                                                                                                             |
| do-common.sh            | Run S3 commands against Digital Ocean. Unfinished                                                                                                                                   |
| do-get@                 | Run S3 commands against Digital Ocean. Symlink to do-common. Idea was to switch like how busybox does                                                                               |
| dydns.sh                | I like my local system IP address (192.168.1.*) to be accessible over the network using https://me.captnemo.in. This updates the DNS server by making an API request to CloudFlare. |
| emojify                 | Third-party. Substitutes emoji aliases (like :sparkling_heart:) to emoji raw characters.                                                                                            |
| epub2mobi.sh            | Convert all EPUB files in a directory recursively to MOBI using ebook-convert                                                                                                       |
| extract_uimage.sh       | Third-party. Extract contents from a uImage, which is the compressed linux kernel format.                                                                                           |
| flac2mp3                | Convert all flac files to mp3 in current directory in parallel using ffmpeg                                                                                                         |
| frak                    | Generates a regex from a given input file containing all possible matches using the frak NPM package.                                                                               |
| get_current_track.py    | Gets my current playing track from /tmp/lastfm.html (which was updated with cron) or the cmus-now-playing status file, whichever existed. Unused now                                |
| get-current-track.sh    | Same, but in Bash                                                                                                                                                                   |
| ghissues2csv            | Exports issues from a list of repositories to individual CSV files.                                                                                                                 |
| git-find-blob           | Given a blob ID, finds the relevant commit                                                                                                                                          |
| git-grab                | Downloads a git directory from a webserver with an exposed .git directory                                                                                                           |
| github-init-repo        | Initialize a repo with a first commit and create it on GitHub                                                                                                                       |
| github-team-ssh-keys.sh | Get all SSH keys for a given team on GitHub                                                                                                                                         |
| gitlistobjectbysize.sh  | Third-party. Find large Git objects to find out what is taking space in your repository                                                                                             |
| git-pushall-branches    | push all branches.                                                                                                                                                                  |
| git-sync                | This scrips intends to sync via git near-automatically                                                                                                                              |
| graphpath               | Third-party. Graphpath generates an ASCII network diagram from the route table of a Unix/Linux                                                                                      |
| hda-analyzer            | Third-party. Alsa debugging helper script                                                                                                                                           |
| hosts                   | adblocking hosts file. I use this as fallback sometimes, since it committed                                                                                                         |
| housekeeping            | A housekeeping script that clears up space, syncs a few repositories                                                                                                                |
| hsmarkdown.php          | Third-party. PHP Markdown Extra with additional syntax for jsMath equations                                                                                                         |
| i3-get-window-criteria  | Third-party. Get criteria for use with i3 config commands                                                                                                                           |
| i3lock-fancy            | Fancy i3lock                                                                                                                                                                        |
| i3lock.sh               | Custom i3lock script                                                                                                                                                                |
| i3-pomodoro             | i3blocks pomodoro script                                                                                                                                                            |
| imguralbum.py           | Third-party. Download a whole imgur album in one go.                                                                                                                                |
| json.sh                 | Third-party. Parse a JSON file using BASH.                                                                                                                                          |
| LICENSE                 | Licenses for third party scripts.                                                                                                                                                   |
| lock.sh                 | Calls betterlockscreen                                                                                                                                                              |
| lowbatterycron.sh       | Cron I run using systemd that notifies me if I am on low battery and power isn't connected                                                                                          |
| mdtable2csv             | Third-party. Converts a markdown table in a file to CSV format                                                                                                                      |
| mobile-pass-sync@       | Sync helper for syncing my mobile-passwords. Now I use `housekeeping`                                                                                                               |
| offline_filter.pl       | Third-party. Simple liferea (and possibly for other things) conversion filter to download content for offline viewing during feed updates.                                          |
| parallel                | Third-party. GNU parallel                                                                                                                                                           |
| pass-show               | Helper script to just output a one-line-password                                                                                                                                    |
| pdf-parser.py           | Third-party script to parse a PDF                                                                                                                                                   |
| pip2arch.py             | Third-party script to generate [PKGBUILD from pip packages](https://github.com/lclarkmichalek/pip2arch/)                                                                            |
| plutil.pl               | implementation of binary/UTF-8 (text) XML conversion of plist files                                                                                                                 |
| port_block_check.sh     | Run this behind a firewall to see if there are any outbound ports that are blocked                                                                                                  |
| prettyping              | Third-party, runs a nice graphical ping                                                                                                                                             |
| pulse-recorder.py       | Records a [pulse audio stream easily](https://gist.github.com/ramast/c47bd5e57586e9c2deb74975e27089f0/).                                                                            |
| resty                   | Third-party. A tiny command line REST interface for bash and zsh.                                                                                                                   |
| reverse_video.sh        | Reverse a video                                                                                                                                                                     |
| rip-git.pl              | Third-party. Brute force and download a publicly exposed .git directory                                                                                                             |
| s3-common.sh            | Do S3 operations from Bash                                                                                                                                                          |
| s3-delete               | Do S3 operations from Bash                                                                                                                                                          |
| s3-get                  | Do S3 operations from Bash                                                                                                                                                          |
| s3-head                 | Do S3 operations from Bash                                                                                                                                                          |
| s3-put                  | Do S3 operations from Bash                                                                                                                                                          |
| screencast              | Select a screen region and generate a nice GIF                                                                                                                                      |
| screen-darken.sh        | Darken my laptop screen by running xrandr                                                                                                                                           |
| screen-off              | Turn off the display by xset dpms. It will turn back on when on user-input                                                                                                          |
| seagate                 | Old sync script that I used to sync content to an external HDD regularly                                                                                                            |
| sem                     | GNU parallell (sem)                                                                                                                                                                 |
| shrinkpdf               | Third-party. Shrinks a PDF by downsampling images (and a few other things)                                                                                                          |
| signcerts.sh            | Runs dehydrated locally to update my certificates via LetsEncrypt. Sets my CloudFlare config and runs dehdyrated                                                                    |
| sleepsize.sh            | Checks and reports the file size every 5 seconds. Helpful when you're copying large files, or waiting for something to complete.                                                    |
| snippy.sh               | Third-party. Helper script for i3 to let me create snippets and type them easily.                                                                                                   |
| split-audio-by-chapters | Splits a audiobook by its various chapters. I added support for providing a chapters.txt file with chapter names in case the M4B file doesn't have correct names                    |
| split-by-audible        | Similar to split-audio-by-chapters, but this one uses a different chapter-listing format, which is what you get when you copy the Audible tracklist from the Audible web player.    |
| split-by-silence        | ffmpeg wrapper to use silence detection to split files. [Source](https://gist.github.com/vi/2fe3eb63383fcfdad7483ac7c97e9deb)                                                       |
| sql                     | Third-party. Runs SQL commands against different drivers based on DBURL. This is a GNU project                                                                                      |
| ssl-cipher-test.sh      | Runs a SSL Cipher test by testing all available ciphers against an upstream server                                                                                                  |
| stream-audio.sh         | Streams pulseaudio to RTSP                                                                                                                                                          |
| swaks                   | Third-party. Swaks is a swiss-knife toolkit for testing SMTP                                                                                                                        |
| synaptic-tweaks.sh      | Third-party. Minor configuration tweaks for synaptic touchpads                                                                                                                      |
| syncMedia               | Old script for syncing content                                                                                                                                                      |
| syncrepos               | Old script for syncing content. Now merged with housekeeping                                                                                                                        |
| undelete                | Attempt to find open file descriptors that are pointing to deleted files and try to recover them                                                                                    |
| unimatrix               | Third-party. Matrix animation on the terminal                                                                                                                                       |
| update.koreader         | Updates KOReader on my Kindle.                                                                                                                                                      |
| vimeo_downloader.sh     | Third-party. Downloads a video fro Vimeo                                                                                                                                            |
| vtt2srt                 | Converts a VTT subtitle file to SRT (PHP)                                                                                                                                           |
| whoisplaying            | Find out which process is playing audio.                                                                                                                                            |
| xsetup                  | Touchpad and other X configuration.                                                                                                                                                 |
| yadisk                  | Download a file from Yandex Disk (like Dropbox) by using their API.                                                                                                                 |
| yubi-insert.sh          | Run when I insert a yubikey. Checks the Serial, and if they don't match, lock my screen                                                                                             |
| yubilock.sh             | Lock my screen when I remove my device. Runs using udev triggers                                                                                                                    |
| ec                      | script to edit common configuration                                                                                                                                                 |
| get-nav                 | Get NAV of a mutual fund from the Kuvera API                                                                                                                                        |
| audiobook2video         | Generates a video for a music file, with a background                                                                                                                               |
| fix-audible-m4a         | Third-party. Fixes audible m4a fiels with incorrect Audio Object Type Specific Config bit. Source: https://rentry.co/n4ost                                                          |

| aps           |   ascii to .ps a file with specified fontsize (need a2ps installed)                                              |   |   |   |
|---------------|------------------------------------------------------------------------------------------------------------------|---|---|---|
| clnM          |   clean ^M from DOS files (using sed)                                                                            |   |   |   |
| clnMdir       |   clean ^M from each file in [dir] or ./ (using sed)                                                             |   |   |   |
| clnblanklines |   delete blank lines from a file                                                                                 |   |   |   |
| clnduplines   |   clean duplicate lines in a file                                                                                |   |   |   |
| clnmail       |   remove junk mail headers from a mail file                                                                      |   |   |   |
| clnmaildir    |   remove junk mail headers from all mail files in a dir                                                          |   |   |   |
| clnns         |   clean out the netscape cache                                                                                   |   |   |   |
| clntex        |   clean out the tex/latex .aux .log                                                                              |   |   |   |
| cntduplines   |   count duplicate lines in a file                                                                                |   |   |   |
| cntfiles      |   count # of files and subdirs                                                                                   |   |   |   |
| cntlast       |   count # of logins, sort output by user                                                                         |   |   |   |
| cntword       |   count # of times a word appears in ./                                                                          |   |   |   |
| deldir        |   delete an entire directory tree                                                                                |   |   |   |
| dvi           |   dvips a .dvi file and produce .ps (need dvips installed)                                                       |   |   |   |
| e1ps          |   enscript pretty .ps of $file with $fontsize $fontfamily                                                        |   |   |   |
| e2ps          |   enscript pretty .ps to 2 columns                                                                               |   |   |   |
| FtoC          |   Fahrenheit to Celcius conversion (using awk)                                                                   |   |   |   |
| ffl           |   find file location (a simple glimpse substitute; see mkfiles)                                                  |   |   |   |
| g2dvi         |   groff a file and produce file.dvi (need groff installed)                                                       |   |   |   |
| g2ps          |   groff a file and produce file.ps (need groff installed)                                                        |   |   |   |
| gplot gpgp    |   gnuplot via script: plot and view dat file and produce file.ps   (need: gplot, gpgp, gnuplot.sh, gnuplot_plot) |   |   |   |
| killns        |   kill a messed up / frozen netscape                                                                             |   |   |   |
| latex2ps      |   latex file.tex and produce file.ps (need latex installed)                                                      |   |   |   |
| linkfiles     |   link each file from source_dir to targer_dir                                                                   |   |   |   |
| listfonts     |   view xlsfonts with more                                                                                        |   |   |   |
| mail2list     |   mail a msgfile to a list of addresses without mailalias                                                        |   |   |   |
| manf          |   troff and view uninstalled man page file                                                                       |   |   |   |
| manmo         |   view a manpage in a new xterm with more, ...                                                                   |   |   |   |
| mkhtml.zip    |   create index.html listing all files in a dir as links                                                          |   |   |   |
| mkfiles       |   create listing of files for easy finding with script "ffl"                                                     |   |   |   |
| octalcharset  |   generate all characters from # \0000 to \0377                                                                  |   |   |   |
| ps2html       |   convert .ps to .html with webify                                                                               |   |   |   |
| psg           |   ps on "process", to see if running                                                                             |   |   |   |
| pso           |   ps on owner processes, to see which running                                                                    |   |   |   |
| psoA          |   ps on all processes, to see what's running                                                                     |   |   |   |
| refs          |   find a name in Refs.list file (primitive database search)                                                      |   |   |   |
| run           |   $aout < $data > $output and append timing to $output                                                           |   |   |   |
| sg            |   remote get "file" from "host" (scp must be functioning)                                                        |   |   |   |
| sp            |   remote put "file" to "host" (scp must be functioning)                                                          |   |   |   |
| scbig         |   sc spreadsheet on "file".sc (big size: 160x60)(need sc installed)                                              |   |   |   |
| scsmall       |   sc spreadsheet on "file".sc (small size: 120x35)(need sc)                                                      |   |   |   |
| tarf          |   tar tf file.tar \| more                                                                                        |   |   |   |
| tarx          |   tar xovf : untar a file.tar                                                                                    |   |   |   |
| tr2html       |   convert troff (ms) file to HTML 2.0 with unroff (need unroff)                                                  |   |   |   |
| up            |   uncompress/display/extract files of various types (.gz, .zip, .tar.gz, .Z) interactively ... very convenient!  |   |   |   |
| zpdir         |   zip dir.zip dir/* (need zip, of course)                                                                        |   |   |   |