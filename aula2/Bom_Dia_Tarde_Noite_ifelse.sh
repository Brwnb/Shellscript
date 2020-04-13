#!/bin/bash

######################################
# Autor: Borges			     #
# Data: 13/04/2020		     #
# 				     #
# Objetivo:			     #
# Criar um script que escreva	     #
# Bom Dia, Boa Tarde e Boa Noite     #
# dependendo do horario. 	     #
# O horario atual deve ser mostrado  #
# no formato Americano. 0-12 AM/PM   #
######################################
#verifica=$1
verifica=$(date +%H)
min=$(date +%M)
AMPM=''
hora=""
if [ $verifica -ge 06 -a $verifica -lt 12 ]
then
	echo "Bom Dia"
elif [ $verifica -ge 12 -a $verifica -lt 18 ]
then
	echo "Boa Tarde"
else
	echo "Boa noite"
fi

if [ $verifica -ge 12 ]
then
	AMPM="PM"
else
	AMPM="AM"
fi

if [ $verifica -gt 12 ]
then
	verifica=$(expr $verifica - 12 )
fi

echo "A hora atual e $verifica:$min $AMPM"
