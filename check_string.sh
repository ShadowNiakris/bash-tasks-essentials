#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail
# Place your code here
string="${1}"

numbers=0
symbols=0
letters=0

while read -n1 i; do
#	echo $i
	case "$i" in
		[a-zA-Z])
			((letters+=1))
			;;
		[0-9])
			((numbers+=1))
			;;
		["*!@#$%^&()_+"])
			((symbols+=1))

			;;
	esac
done <<< "$string"
echo "Numbers: $numbers Symbols: $symbols Letters: $letters"
