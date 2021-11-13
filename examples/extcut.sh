#!/usr/bin/env bash

#Extracting Substrings Using Cut

#The Linux cut command can be used inside your scripts to ‘cut’ a portion of a string, aka the substring. The next example shows how this can be done.

#!/bin/bash
Str="Learn Bash Commands from UbuntuPit"
#subStr=${Str:0:20}

subStr=$(echo $Str| cut -d ' ' -f 1-3)
echo $subStr