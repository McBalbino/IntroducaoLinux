#!/bin/bash

echo "======================================================="
NMAQUINA=$(uname -n)
echo "Relatório da máquina: " $NMAQUINA
DATE=$(date '+%a %b %d %T %:::z %Y')
echo "Data/Hora: " $DATE
echo "======================================================="
echo

echo "Maquina ativa desde: " $(uptime -s)
echo

echo "Versão do kernel: " $(cat /proc/version | awk -F" " '{ print $3 }')

echo
echo "Memória total: " $(cat /proc/meminfo | grep MemFree | awk -F" " '{ print $2 $3 }')

echo $(df -h)

diskinfo=$(echo $(df -h) > diskinfo.txt)
echo "Partições: "
while IFS= read -r line
do
	echo $line
done << $(df -h)

echo "======================================================="
