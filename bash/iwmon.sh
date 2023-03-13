#!/bin/bash

while true ; do
	clear
	iw dev
	iwconfig wlan0
	ifconfig wlan0
	sleep .1
done
