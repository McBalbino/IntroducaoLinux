#!/bin/bash

maior=0
nome_maior=''

while read line; do
	nome=$(echo $line | awk -F, '{ print $1 }')
	valor=$(echo $line | awk -F, '{ print $2 }')
	echo $nome
	echo $valor
	if [ $valor -ge $maior ]
	then
		maior=$valor
		nome_maior=$nome
	fi
done < $1

echo $nome_maior recebe $maior
