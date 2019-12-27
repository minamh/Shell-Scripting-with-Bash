#!/bin/bash  


#check number of arguments

if [[ $# -ne 2 ]]; then
	echo "Need exactly two arguments"
	exit 1
fi

if [[ ! -d $1 ]]; then
	echo "'$1' is not a directory"
	exit 1
fi

if [[ ! -d $2 ]]; then
	echo "'$2' is not a directory"
	exit 1
fi

