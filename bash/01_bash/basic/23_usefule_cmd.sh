#!/bin/bash

read -p "Enter site you wanna check: " site

# '&> /dev/null' or '/dev/null' will throw the output in blackhole 

ping -c 1 $site &> /dev/null

# $? is to check the output of last cmd 0 mean it was successful
# and others mean wasn't successful
if [[ $? -eq 0 ]]
then
    echo "Connected with $site successfully"
else
    echo "Unable to connect with $site"
fi