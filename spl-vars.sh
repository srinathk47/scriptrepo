#!/bin/bash

echo "all variables passed to the script:  $@"

echo "Number of variables passed: $#"

echo "script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the script executing now is:$$"
sleep 100 &

echo "PID of last background command is: $!"
