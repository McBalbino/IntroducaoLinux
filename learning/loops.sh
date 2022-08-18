#!/bin/bash

number=1

# for loop
#for i in {0..20..2}
for (( i=0; i<=10; i++ ))
do
	# continue
	if [ $i -eq 3 ] || [ $i -eq 7 ]
	then
		continue
	fi

#	break
#	if [ $i -gt 5 ]
#	then
#		break
#	fi
	echo $i
done

# while loop
: '
while [ $number -lt 10 ]
do
	echo "$number"
	number=$(( number + 1 ))
done'

# until loop
: '
until [ $number -ge 10 ]
do
	echo "$number"
	number=$(( number+1 ))
done'
