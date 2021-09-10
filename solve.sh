#!/bin/bash

echo "$(date +"%d.%m.%Y %H:%M")" >> /tmp/run.log
echo "Hello"
num=$(cat /tmp/run.log | wc -l)
echo "$num" >&2
