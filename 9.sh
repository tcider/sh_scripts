#!/bin/bash

res=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" /etc/hosts | grep -v "127.0.0.1")
if [ -n "$res" ]; then
	echo "There are other IP, different then 127.0.0.1"
fi
