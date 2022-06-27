#!/bin/bash

# Description: Script of the exemple to command read.
# 		The user must input two value, the script
#		will sum them and print on the screen

echo 
echo 

read -p "Enter with the first value: " first
read -p "Enter with the second value: " second

if [[ -z $first || -z $second ]];
then
	echo "Insert a value"
else
	echo $first $second | egrep '[0-9]' > /dev/null
	if [[ $? -eq 0 ]];
	then
		sum=$(echo $first + $second | bc)

		echo "The result is: " $sum 
		echo
		echo
	else
		echo "Insert a number in the program"
	fi
fi
