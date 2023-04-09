#!/bin/bash

release=/etc/os-release
logfile=/var/log/log_file.log
errorlog=/var/log/error_file.log

if grep -q "Arch" $release 
then
        sudo pacman -Syu 1>$logfile 2>$errorlog
        if  [ $? -ne 0 ]
        then
                echo "Error occuered..kindly check $errorlog"
        fi
fi

if grep -q "Ubuntu" $release 
then
        sudo apt update -y 1>$logfile 2>$errorlog
        if [ $? -ne 0 ]
        then
                echo "Pls check $errorlog file..."
        fi
        sudo apt dist-upgrade -y 1>$logfile 2>$errorlog
        if [ $? -ne 0 ]
        then
                echo "Pls check $errorlog file..."
        fi
fi
