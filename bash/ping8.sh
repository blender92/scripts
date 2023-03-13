#!/bin/bash

srv="8.8.8.8"
count=1

while true ; do
	result=$(ping -w 1 -W 1 -c 1 $srv | grep 'time' | cut -d '=' -f 4)
	export result
	pingtime=$(echo $result | cut -d ' ' -f 1)
	if [[ $pingtime == ""  ]] ; then
		echo "$count: X"
	else
		echo "$count: $pingtime ms"
	fi
	count=$(expr $count + 1)
	sleep .5
done
