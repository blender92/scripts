#!/bin/bash

out8="./ping8.log"
outwp="./pingwp.log"
outst="./speedtest.log"


while true ; do
	timenow=$(timedatectl | grep local)
	echo "--------------------" >> $out8
	echo $timenow >> $out8
	ping -c 1 8.8.8.8 >> $out8
	echo "--------------------" >> $out8

	echo "--------------------" >> $outwp
	echo $timenow >> $outwp
	ping -c 1 wp.pl >> $outwp
	echo "--------------------" >> $outwp

	echo "--------------------" >> $outst
	echo $timenow >> $outst
	speedtest-cli >> $outst
	echo "--------------------" >> $outst
done
