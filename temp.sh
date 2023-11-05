#!/bin/bash

# Place your code here
source=$1

scale=${source: -1:1}
temp=${source:0: -1}
result=0

#echo $scale
#echo $temp

if [[ "$scale" == 'K' ]]; then
	result=$(( $temp - 273 ))'C'
else
	result=$(( $temp + 273 ))'K'
fi

echo $result
