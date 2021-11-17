#!/usr/bin/env bash

function count() { 
  total=$1 
  for ((i=total; i>0; i--)); do sleep 1; printf "Time remaining $i secs \r"; done 
  echo -e "\a" 
} 

# A timer which counts till the specified number of seconds, and then rings a bell. Equivalent of ‘set timer x’ on google on terminal (without requiring internet connection).