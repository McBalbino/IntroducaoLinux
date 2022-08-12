#!/bin/bash

if [ ! -d log ]
then
	mkdir log
fi

PROCESSO=$1
STATUS=$(jobs | grep $PROCESSO$ | cut -f3 -d" ")

while [ "$STATUS" != "Done" ]
if [ "$STATUS" = "Stopped" ]
then
	echo "parado" $STATUS
elif [ "$STATUS" = "Running" ]; then
	echo "correndo" $STATUS
else
	echo "$STATUS"
fi
