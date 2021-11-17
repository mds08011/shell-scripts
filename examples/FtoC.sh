### convert Fahrenheit to Celcius: FtoC.awk   enter deg F one by one, ^C to exit

echo "    Fahrenheit to Celcius conversion: Enter degrees F:"
awk '{print "    ",$1," F is ", ( $1 - 32 )*5/9 , " Celcius.  Enter another:"}' -

