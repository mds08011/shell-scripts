#!/bin/bash
# This program will simply delete all log files present inside your /var/log directory. You can change the variable that holds this directory for cleaning up other logs. Run as root.
LOG_DIR=/var/log
cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp
echo "Logs cleaned up."