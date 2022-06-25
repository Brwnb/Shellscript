#!/bin/bash

# Description: Script of the exemple to command read.
# 		The user must input two value, the script
#		will sum them and print on the screen

echo 
echo 

echo -n "Enter with the two  value: "

sum=$(expr $1 + $2)

echo "The result is: " $sum 

echo
echo
