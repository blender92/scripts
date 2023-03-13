#!/bin/bash

port="/dev/ttyUSB*"
echo '++++++++++++++ READ MAC +++++++++++++++++++++++'
esptool -p $port read_mac
echo '+++++++++++++++++ CHIP ID +++++++++++++++++++++'
esptool -p $port chip_id
echo '+++++++++++++++ FLASH ID ++++++++++++++++++++++'
esptool -p $port flash_id
echo '++++++++++++++++ FLASH STATUS +++++++++++++++++++++'
esptool -p $port read_flash_status
echo '+++++++++++++++++++++++++++++++++++++'
echo '+++++++++++++++++++++++++++++++++++++'
