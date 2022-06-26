#!/bin/bash

# Description: Script of the exemple to command read.
# 		The user must input two value, the script
#		will sum them and print on the screen

echo 
echo 
echo $*
echo $1 $2 | egrep [0-9] >> /dev/null
if [[ $? -eq 0 ]]; then
	sum=$(echo $1 + $2 | bc)
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

