#!/bin/bash

echo "Enter folder path"
read p
find $p -type file -mtime -3 | wc -l
