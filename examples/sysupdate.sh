#!/bin/bash
# The script also takes care of old packages that are no longer needed. You need to run this script using sudo else it will not work properly.

echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"

apt-get update
apt-get -y upgrade

apt-get -y autoremove
apt-get autoclean

echo -e "\n$(date "+%T") \t Script Terminated"