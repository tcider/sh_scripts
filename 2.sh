#!/bin/bash

array=(0 0 0 0 0)
i=0
while [ "$i" -le "5" ]; do
  num=$(gshuf -i 1-50 -n 1)
  for j in ${array[@]}; do
    if [ "$num" -eq "$j" ];
      then
        num=$(gshuf -i 1-50 -n 1)
	j=0
      else
	((j++))
    fi
  done
  array[$i]=$num
  ((i++))
done
echo "Answer:"
echo ${array[@]}
echo "$(date +"%d.%m.%Y %H:%M")"
echo ${array[@]} > result.txt
echo "$(date +"%d.%m.%Y %H:%M")" >> result.txt
echo "Answer was saved in result.txt"
