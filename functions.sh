#!/bin/bash

# Put your code here
#this function raises the first argument to the power of the second
function pow ()
{
	a="${1}"
	b="${2}"

#	echo "${a}^${b}" | bc 
	echo | awk '{ res = v1 ** v2 ; print res }' v1=$a v2=$b
}

#this funcrion returns the shortest passed argument
function shortest () 
{
	# hash table declaration 
	declare -A key_value_var
	# order array declaration
	declare -a order
	
	min=${#1}

	for str in $* ; do
		key_value_var["$str"]=${#str}
		order+=( "$str" )
		
		if [[ ${#str} < $min ]]; then
			min=${#str}
		fi
#		echo "min=${min}"
	done

	for key in ${order[@]}; do
#		echo $key
		if [[ ${key_value_var[$key]} == $min ]]; then
			echo "$key"
		fi
	done
}

#this function gets a string and returns the string with a date at the beginning
function print_log () {
	date=$(date '+%Y-%m-%d %H:%M')
	echo "[$date]" $1

}
