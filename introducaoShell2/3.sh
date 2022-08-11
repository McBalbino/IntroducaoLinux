#!/bin/bash

#pode usar $* ao inves do $@ mas o * carrega tudo de uma vez ja o @
#vai um por um
for xxx in $@
do
	echo $xxx
done
