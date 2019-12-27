#!/bin/bash  

# First check the number of arguments:
if [[ $# -ne 2 ]]; then
	echo "This script needs two arugments"
	exit 1
fi

#Check that the first argument is a directory:
if [[ ! -d $1 ]]; then
	echo "'$1' is not a directory"
	exit 1
fi

#check that the second argument is a directory:
if [[ ! -d $2 ]]; then
	echo "'$2' is not a directory"
	exit 1
fi

dir1="$1"
dir2="$2"

#Get the number of files in each directory:
count1=$(ls -al "$dir1"|wc -l)
count2=$(ls -al "$dir2"|wc -l)

#Compare counts:
if [[ $count1 -gt $count2 ]]; then
	echo "$dir1 has more files than $dir2"
elif [[ $count2 -gt $count1 ]]; then
	echo "$dir2 has more files than $dir1"
else
	echo "Both directories have the same number of files"
fi

exit 0