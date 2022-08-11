#!/bin/bash

maior=0

while read valor; do
	if [ $valor -ge $maior ]
	then
		maior=$valor
	fi
done < $1

echo $maior
