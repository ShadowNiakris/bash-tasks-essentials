#!/bin/bash

# Put you code here
# This script makes a copy of given passwd file
# then Changes shell for user saned from /usr/sbin/nologin to /bin/bash using AWK

#lets our script exits if error happened
set -e

file='./passwd_new'
originfile='./passwd'
tmpfile='./passwd.tmp'

#make a copy of given passwd file
cp $originfile $file

#Change shell for user saned from /usr/sbin/nologin to /bin/bash using AWK
awk -F: '{if ($1 == "saned") print $1":"$2":"$3":"$4":"$5":"$6":/bin/bash"; else print $0}' $originfile > $file

#change shell for user avahi /usr/sbin/nologin to /bin/bash using SED
sed -i '/^avahi:/s/\/usr\/sbin\/nologin/\/bin\/bash/' $file 

#cp $tmpfile $file

#Save only 1-st 3-th 5-th 7-th columns of each string based on : delimiter
awk -F: '{print $1":"$3":"$5":"$7}' $file > $tmpfile

cp $tmpfile $file

#Remove all lines from file containing word daemon
sed -i '/daemon/d' $file

#Change shell for all users with even UID to /bin/zsh
awk -F: '{if ($2 % 2 == 0) print $1":"$2":"$3":/bin/zsh"; else print $0}' $file > $tmpfile

truncate -s -1 $tmpfile
cp $tmpfile $file

rm $tmpfile
