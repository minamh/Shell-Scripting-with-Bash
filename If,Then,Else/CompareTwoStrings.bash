#!/bin/bash  

# First check the number of arguments:
if [[ $# -ne 2 ]]; then
	echo "This script needs two arugments"
	exit 1
fi

#Get the lengths of the strings:
length_1=${#1}
length_2=${#2}

#Compare lengths:
if [[ $length_1 -gt $length_2 ]]; then
	echo "$1 is longer than $2"
elif [[ $length_2 -gt $length_1 ]]; then
	echo "$2 is longer than $1"
else
	echo "Both words are of the same length"
fi

exit 0