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
horario_atual=$(date +%I:%M)
verifica=$(date +%H)
AMPM=''

case $verifica in
	0[6-9] | 1[01])
		echo "Bom dia"
		AMPM="AM"
		;;
	1[2-7])
		echo "Boa Tarde"
		AMPM="PM"
		;;
	*)
		echo "Boa Noite"
		AMPM="PM"
esac
echo "Hora Atual: $horario_atual $AMPM"
