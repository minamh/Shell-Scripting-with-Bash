#!/bin/bash  

#Get the date
date=$(date)

#Get the topic
topic="$1"


#File to write to
filename="./${topic}notes.txt"

#Ask user for input:
read -p "Please enter the note: " note

if [[ "$note" ]]; then 
	echo "$date: $note" >> "$filename"
	echo "Note: '$note' saved to $(realpath $filename)"
else
	echo "No input. Note not saved!";
fi