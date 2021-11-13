#!/usr/bin/env bash
#Appending to Files

#The below shell script example will show you how to append data to a file on your filesystem using bash scripts. It adds an additional line to the earlier editors.txt file.

#You should notice by now that we’re using everyday terminal commands directly from Linux bash scripts.

echo "Before appending the file"
cat editors.txt
echo "6. NotePad++" >> editors.txt
echo "After appending the file"
cat editors.txt