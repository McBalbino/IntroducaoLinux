#!/bin/bash

# 1>standard output 2>standard error
# ls -al 1>file1.txt 2>file2.txt
# redirecionar std out e std error para o mesmo arquivo
ls +al >& file1.txt
