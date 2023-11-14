#!/bin/bash

# Put your code here
#this function raises the first argument to the power of the second
function pow ()
{
	a="${1}"
	b="${2}"

	echo "${a}^${b}" | bc 
}

#this funcrion returns the shortest passed argument
function shortest () 
{
	declare -A key_value_var
	
	min=${#1}
	for str in $* ; do
		key_value_var["$str"]=${#str}
		if [[ ${#str} < $min ]]; then
			min=${#str}
		fi
	done

	for key in ${!key_value_var[@]}; do
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
