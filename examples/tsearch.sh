# Searching from the terminal
engine=$1
shift
# Escape spaces for URL
a="$*"
q=${a// /+}

case "$engine" in
    g) req="https://encrypted.google.com/search?q=$q";;
    i) req="https://encrypted.google.com/search?q=$q&btnI=";;
    w) req="https://en.wikipedia.org/w/index.php?title=Special:Search&search=$q&go=Go";;
    d) req="https://en.wiktionary.org/wiki/Special:Search?search=$q";;
    x) req="https://biblemenus.com/searchbiblos.php?q=$q";;
    m) req="https://www.imdb.com/find?s=all&q=$q";;
    y) req="https://www.youtube.com/results?search_query=$q";;
    r) req="https://www.reddit.com/search?q=$q&include_over_18=on";;
    # Add many more, then chose a default below:
    *) $0 g $engine $@; exit 0;;
esac
w3m "$req"