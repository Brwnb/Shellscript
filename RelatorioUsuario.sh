#!/bin/bash
##############################################################
# Autor: Borges						     #
# data: 12/04/2020					     #
# 							     #
# Objetivo :						     #
# Criar um relatorio sobre determinado usuario.              #
# No relatorio precisa ter o uid do usuario, a descricao     #
# (nome completo) do usuario, uso de disco e o ultimo login. #
##############################################################


clear
read -p "Digite o nome do usuario: " nome
grep $nome /etc/passwd > /dev/null || echo "Usario nao existes" && exit 1


uid=$(grep $nome /etc/passwd | cut -d: -f3)
nome_completo=$(grep $nome /etc/passwd | cut -d: -f5 | tr -d ",")
uso_disco=$(du -hc /home/$nome | grep total | cut -d\t -f1)
ultimo_login_cabecalho=$(lastlog | head -1)
ultimo_login=$(lastlog | grep $nome)


echo "============================"
echo "Relatorio de usuarios"
echo "Nome do usuario: $nome"
echo "Descricao do usuario: $nome_completo"
echo "UID do usuario: $uid"
echo "Total de Uso de disco: $uso_disco"
echo "============================"
echo "Ultimo login"
echo "$ultimo_login_cabecalho"
echo "$ultimo_login"
