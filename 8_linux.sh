#!/bin/bash

if [ -n "$1" ]; then
	if [[ "$1" == "-f" ]]; then
		shift
		if [[ -n "$1" ]]; then
			apt-get install -y $(cat "$1")
		fi
		exit
	fi

	for param in "$@"
	do
		echo "Installin $param"
		apt-get install -y $param
	done
fi
