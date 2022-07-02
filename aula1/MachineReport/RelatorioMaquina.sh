#!/bin/bash

###############################################
# Autor: Borges				      #
# Data: 11/04/2020			      #
# 					      #
# Objetivo:				      #
# Criar um relatorio da maquina.	      #
# Esse relatorio deve conter nome da maquina, #
# Tempo de uso, versao do kernel, Quant. de
# CPUs/core, Modelo do CPU, Quant de memoria,
# Tamanho das parti√oes

nome=$(cat /etc/hostname)
data_hora_atual=$(date)
howlong=$(uptime | cut -d" " -f4-5 )
kernel=$(uname -r)
cpucore=$(grep "model name" /proc/cpuinfo | wc -l)
cpumodel=$(grep "model name" /proc/cpuinfo | uniq | cut -d":" -f2)
mem=$(expr $(cat /proc/meminfo | grep "MemTotal" | sed 's/ //g' | tr -d "kB" | cut -d":" -f2) / 1024)
#t=$(echo $mem/1024 | bc )
particao1=$(df -hT | head -1)
particao2=$(df -hT | grep "^/dev/*")

clear
echo "==================================="
echo "Relatorio da maquina: $nome"
echo "Data/Hora: $data_hora_atual"
echo "==================================="
echo "Maquina ativa desde de $howlong"
echo "Versao do kernel: $kernel"
echo "***********************************"
echo "Modelo CPU: $cpumodel"
echo "Quant. de CPU/Cores: $cpucore"
echo "Quatidade de Memoria em MB: $mem"
echo "$particao1"
echo "$particao2"
