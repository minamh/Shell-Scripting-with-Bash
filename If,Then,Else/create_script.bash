#!/bin/bash

if [[ ! $1 ]];then
	echo "File name missing!"
	exit 1
fi

filename="$1"
if [[ -e $filename ]]; then
	echo "File ${filename} already exists"
	exit 1
else
	touch $filename
	echo "${filename} created!"
fi

echo "End of code reached"
exit 0