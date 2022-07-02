#!/bin/bash

# Description: Script of the exemple to command read.
# 		The user must input two value, the script
#		will sum them and print on the screen
#
#		This script receive values using arguments 
#		in order they were passed
#		
#		This script checking if the values are null 
#		and are numbers
#	
# 		Of course all this configurations aren't necessary,
#		but I wanted put some challenges to improve my
#		logic
#
#


minimun=$(echo $* | wc -w)

if [[ $minimun -gt 1 ]]; then
	echo $1 $2 | egrep [0-9] > /dev/null

	if [[ $? -eq 0 ]]; then
		sum=$(echo $1 + $2 | tr , . | bc)
		echo
		echo
		echo "The result is: " $sum 
		echo
		echo

	else
		echo
		echo
		echo "The Values aren't numbers "
		echo 
		echo

	fi
else
	echo
	echo
	echo "Insert two values in the system"
	echo
	echo
fi
