#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "please run this script"

fi

dnf install git -y