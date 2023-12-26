#!/bin/bash

# for i in {1..10}
for ((i=0;i<=10;i++))
do
    let num=i%2
    if [[ $num -eq 0 ]]
    then
        continue
    else
        echo "$i is odd"
    fi
done