#!/bin/bash

read -p "enter the number to find b/w 1 and 10: " number

for i in {1..10}
do
    if [[ $number -eq $i ]]
    then
        echo "Got you number...which is $number"
        break
    else
        echo "number was not $i"
    fi
done