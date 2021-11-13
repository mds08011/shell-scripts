#!/bin/bash
# The following example will backup each file or directory that have been modified within the last 24 hour. This program utilizes the find command to do this.
# It will print the names of the files and directories after the backup process is successful.

BACKUPFILE=backup-$(date +%m-%d-%Y)
archive=${1:-$BACKUPFILE}

find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."
exit 0