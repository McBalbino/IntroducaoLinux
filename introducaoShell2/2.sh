#!/bin/bash

if [ $1 -gt $2 ]; then
	echo $1 é maior
elif [ $1 -lt $2 ]; then
	echo $2 é maior
elif [ $1 -eq $2 ]
then
	printf "$1 e $2 sao iguais\n"
fi
