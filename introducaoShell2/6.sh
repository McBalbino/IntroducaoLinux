#!/bin/bash

maior=0

calcula_maior(){
	if [ $1 -ge $2 ]
	then
		echo $1
#		maior=$1
	else
		echo $2
#		maior=$2
	fi
}

while read valor; do
	maior=$(calcula_maior $maior $valor)
done < $1

echo $maior
