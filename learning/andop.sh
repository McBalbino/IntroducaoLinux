#!/bin/bash

age=30

# if [[ "$age" -gt 18 && "$age" -lt 40 ]]
# if [ "$age" -gt 18 -a "$age" -lt 40 ]
# ||                 -o é operator or
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
	echo "Age is correct"
else
	echo "Age is not correct"
fi

# case statement
# car=$
# case $car in
