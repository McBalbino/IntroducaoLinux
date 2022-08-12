#!/bin/bash

echo "======================================================================="

echo "UID: " $(id -u maria)
echo "Nome ou Descrição: " $(id -un)
echo
echo "Total usado no /home/maria: " $(du -h /home/maria | grep /home/maria$ | cut -f1 -d/)
echo
ultimo_login=$(last -1 --time-format short maria | head -n 1)
echo "Ultimo login:"
echo $ultimo_login

echo "======================================================================="
