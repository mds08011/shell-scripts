#!/bin/bash
# Check Whether You’re Root
# The output of this script depends on the user running it. It will match the root user based on the $UID.
ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]
then
echo "You are root."
else
echo "You are not root"
fi
exit 0