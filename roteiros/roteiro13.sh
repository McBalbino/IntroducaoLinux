#!/bin/bash

if [ ! -d log ]
then
	mkdir log
fi

PROCESSO=$1
TIPO=$2
START=$($PROCESSO $TIPO)
STATUS=$(jobs | grep $1$ | cut -f3 -d" ")


while [ "$STATUS" != "Done" ]
do
	if [ "$STATUS" = "Stopped" ]
	then
		echo "parado" $STATUS
	elif [ "$STATUS" = "Running" ]; then
		echo "correndo" $STATUS
	else
		echo "$STATUS"
	fi
done
