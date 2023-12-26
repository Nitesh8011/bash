#!/bin/bash

min=0
max=10

while [ $min -le $max ]
do
    echo "number is $min"
    let min++
done

#while loop to read from file

while read name
do
    echo "my name is $name"
done < name.txt