#!/usr/bin/bash

echo "Enter number..."
read a

while [[$a -le 10]]; do
	echo "$a"
	((i+=1))
done
