#!/bin/bash

apt-get install -y procps

ps -eo pid,ppid,cmd,%mem --sort=-%mem | head
