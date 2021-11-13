#!/usr/bin/env bash

# Multi-line comments

# Many people use multi-line comments for documenting their shell scripts. Check how this is done in the next script called comment.sh.

: '
This script calculates
the square of 5.
'
((area=5*5))
echo $area