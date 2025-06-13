#!/bin/bash

SERVICE="ssh"

while true
do
	# Cek status service
	if systemctl is-active --quiet $SERVICE
	then
	     echo "$(date): $SERVICE is running"
	else
	     echo "$(date): $SERVICE is NOT running"
	fi
	sleep 10
done
