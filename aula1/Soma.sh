#!/bin/bash
##########################################
# Autor: Borges				 #
# Data: 11/04/2020			 #
# 					 #
# Objetivo				 #
# Receber duas variaveis do usuario      #
# e printar na tela a soma dos numeros   #
##########################################


echo "Digite dois valoes separados por espaco :" 
read v1 
read v2

sum=$(echo $v1 + $v2 | bc -l)
echo "O valor da soma e $sum"
