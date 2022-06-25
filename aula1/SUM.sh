#!/bin/bash

# Description: Script of the exemple to command read.
# 		The user must input two value, the script
#		will sum them and print on the screen

echo 
echo 

echo -n "Enter with the first value: "
read first

echo -n "Enter with the second value: "
read second

sum=$(expr $first + $second)

echo "The result is: " $sum 

