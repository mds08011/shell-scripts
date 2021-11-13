#!/bin/bash
# Print Number of Files or Directories
# The below Linux bash script finds the number of files or folders present inside a given directory. It utilizes the Linux find command to do this. First, you need to pass the directory name to search for files from the command line.
# The program will ask the user to try again if the specified directory isn’t available or have permission issues.

if [ -d "$@" ]; then
echo "Files found: $(find "$@" -type f | wc -l)"
echo "Folders found: $(find "$@" -type d | wc -l)"
else
echo "[ERROR] Please retry with another folder."
exit 1
fi