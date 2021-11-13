# GNU tar can autodetect the compression algorithm, so all those tar options can either be taken out, or combined.
# tar xvf is suffucuebt nowadays?
# https://old.reddit.com/r/linux/comments/68h082/what_are_some_musthave_bash_scripts_that_everyone/dgyjuyw/
# Don't forget uppercase versions of zip and rar. I hate Windows's case insensitivity so much.
# Yeah, or the weirdos that compress from the root of a directory. I always unzip -l just to make sure I don't hose my ~/src.
# Looks like this script is trying to be sh-compatible; I'm pretty entrenched in bash-isms myself so I don't know; how would you convert to lower case in sh? Pipe to tr? Does `` work inside quotation marks to prevent word splitting?
#
# Regex!
# *.[Rr][Aa][Rr])
# *.[Zz][Ii][Pp])
#
# Ooh, I like that! That plus change the $1s to "$1"s in the case branches and we've got a pretty solid little scriptlet here.
#
# No love for .xz? Those always always always trip me up
function extract()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}