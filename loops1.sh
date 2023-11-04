#!/bin/bash

#we can  do this task with rev and substitution, but the task is about loops so
#str=${1~~}
#echo $str | rev

str=$1
result=''

for (( i=${#str}-1; $i>=0; i-- )); do
	result+=${str:$i:1}
done

echo ${result~~}
