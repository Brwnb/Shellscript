#!/bin/bash

# Description: Script of the exemple to command read.
# 		The user must input two value, the script
#		will sum them and print on the screen

echo 
echo 

read -p "Enter with the first value: " first

read -p "Enter with the second value: " second

sum=$(expr $first + $second)

echo "The result is: " $sum 

