#!/bin/bash

# Place your code here
#script takes number (count of needed folders up to 26) as an argument and creates this folders in current directory with next naming convention folder_<[a-z]>.

num=$1
echo "you put the number "$num

i=0

for c in {a..z}
do
	(( i+=1 ))
	echo "the $i character is "$c
	if [[ $i -le $num ]]
	then
		mkdir "folder_$c"
		echo "oing the folder folder_$c"
	else
		break;
	fi
done
