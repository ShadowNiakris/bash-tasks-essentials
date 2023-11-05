#!/bin/bash

IFS=',' read -r -a array <<< "$1"

#Write your code here
sum=0
for i in ${array[@]}; do
#	echo $i
	if [ $(expr $i % 2) == 0 ]; then
#		echo "$i is even"
		(( sum+=$i ))
	fi
done

echo $sum
