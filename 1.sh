#!/bin/bash

echo "Start:"
read a
if [ "$a" -eq "$a" ] 2>/dev/null;
  then
    echo "OK"
  else
    echo "Error"
    exit
fi

echo "End:"
read b
if [ "$b" -eq "$b" ] 2>/dev/null;
  then
    echo "OK"
  else
    echo "Error"
    exit
fi

if [ "$b" -lt "$a" ];
  then
    echo "Error"
fi

echo "Answer:"
while [ "$a" -le "$b" ]; do
  ost=$(($a % 12))
  if [ "$ost" -eq "0" ];
    then
      echo $a	
  fi
  ((a++))
done

