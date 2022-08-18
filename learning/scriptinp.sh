#!/bin/bash

#echo $1 $2 $3
#args=("$@")
#echo ${args[0]} ${args[1]} ${args[2]}
#echo $@
# imprime o tamanho do array
# echo $#

while read line
do
	echo "$line"
done < "${1:-/dev/stdin}"
