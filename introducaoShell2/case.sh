#!/bin/bash

read valor

case $valor in
	1) echo "primeira opcao"
		;;
	2) echo "segunda opcao"
		;;
	a) echo "letra a"
		;;
	*) echo "outra opcao"
		;;
esac
