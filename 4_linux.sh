#!/bin/bash

apt-get install -y procps

echo "Enter pid of parent proccess"
read pp
ps --ppid $pp
