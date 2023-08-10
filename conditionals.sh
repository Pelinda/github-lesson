#!/bin/bash

x=4

if [ $x -gt 5 ]; then
 echo "$x greater that 5"
elif [ $x -eq 5 ]; then
 echo "$x equals 5"
else
 echo "$x less than 5"
fi
