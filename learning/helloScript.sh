#!/bin/bash

echo "hello bash script" > file.txt

: '
cat > file.txt
cat >> file.txt'
# multi line comment
