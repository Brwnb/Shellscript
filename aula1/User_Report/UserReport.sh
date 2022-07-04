#!/bin/bash

read -p "Enter with the user's name: " name

# try find the name
grep -E "^$name" /etc/passwd > /dev/null 2>&1 || { echo "User desn't existe" ; exit 1; }

uid_user=$(grep -E "^$name" /etc/passwd | cut -d: -f3)
full_name=$(grep -E "^$name" /etc/passwd | cut -d: -f5 | tr -d ",")
disk_usage=$(du -hc /home/$nome | grep total | cut -d\t -f1)
head_last_login=$(lastlog | head -1)
last_log=$(lastlog | grep -E "^$name")
echo "================================"
echo "================================"
echo "================================"
echo "User Report"
echo "User Name: $name"
echo "User Description: $full_name"
echo "User UID: $uid_user"
echo "Total disk usage: $disk_usage"
echo "$head_last_login"
echo "$last_log"

