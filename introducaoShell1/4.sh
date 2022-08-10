#!/bin/bash

maior=0

for valor in $(cat $1)
do
	if [ $valor -ge $maior ]
	then
		maior=$valor
	fi
done

echo $maior
