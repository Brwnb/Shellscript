#!/bin/bash

machine_name=$(hostname)
machine_date=$(date +%H:%M' '%D)
machine_uptime=$(uptime -s)
machine_kernel=$(uname -r)
machine_core=$(grep processor /proc/cpuinfo | wc -l)
machine_CPU_Model=$(grep "model name" /proc/cpuinfo | uniq | cut -d":" -f2)
free_memory=$(echo $(grep MemTotal /proc/meminfo | tr -d "kB" | sed 's/ //g' | cut -d":" -f2) \/ 1024 | bc)
partitions=$(df -hT | egrep ^/dev)
partition_tittle=$(df -hT | head -1)

clear
echo "======================================"
echo "======================================"
echo "Machine: $machine_name"
echo "Date/time: $machine_date"
echo "======================================"
echo "===="
echo "=="
echo "="
echo "Machine Uptime: $machine_uptime"
echo "Kernel Version: $machine_kernel"
echo "="
echo "CPUs:"
echo "Amount of Core/vCore: $machine_core"
echo "CPU Model: $machine_CPU_Model"
echo "Amount of Memory: $free_memory MB"
echo "="
echo "Partitions"
echo "$partition_tittle"
echo "$partitions"
echo "="
echo "=="
