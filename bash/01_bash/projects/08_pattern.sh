#!/bin/bash

# 1
# 1 2
# 1 2 3
# 1 2 3 4

read -p "Enter any number: " n

for ((i = 1; i <= $n ; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$j "
    done
    echo
done

# x--------x----------x----------x

# 1 
# 2 3 
# 4 5 6 
# 7 8 9 10 


number=1
read -p "Enter number of rows: " n2

for ((i = 1; i <= $n2; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$number "
        ((number++))
    done
    echo
done