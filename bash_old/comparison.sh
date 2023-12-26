#!/usr/bin/bash

echo "Enter your first number..."
read a

echo "Enter second number..."
read b

if [$a -gt $b]
    then
	echo $a" is greater than "$b

elif [$a -lt $b]
    then
	echo $b" is grater than "$a

else
    echo "Kindly enter correct number"

fi
