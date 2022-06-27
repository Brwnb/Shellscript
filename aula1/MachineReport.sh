#!/bin/bash

machine_name=$(cat /etc/hostname)
machine_date=$(date +%H:%M' '%D)
machine_uptime=$(uptime)
machine_kernel=$(uname -r)
machine_core=$(grep processor /proc/cpuinfo | wc -l)
machine_CPU_Model=$(grep "model name" /proc/cpuinfo | uniq | cut -d":" -f2)
free_memory=$(echo $(grep MemTotal /proc/meminfo | tr -d "kB" | sed 's/ //g' | cut -d":" -f2) \/ 1024 | bc)
partitions=$(df -hT | egrep ^/dev)
partition_tittle=
