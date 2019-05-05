#!/bin/bash

cmp /etc/resolv.conf resolv.conf > /dev/null 2>&1
if [ $? -ne 0 ];
then 
	sudo /sbin/dhclient
fi
