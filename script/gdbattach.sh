#!/bin/bash

if [ "$#" -eq 1 ]; then
    pid=`ps -A | grep -w $1 | awk '{print $1}'`
    if [ ! "$pid" ]; then
        echo "No such process: $1"
    else
       ~/gdb -p $pid
    fi
else
    echo "Usage: ga [process name]"
fi 