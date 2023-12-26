#!/bin/bash

while IFS=',' read id name age
do
    echo "candidate id is $id"
    echo "candidate name is $name"
    echo "candidate age is $age"
done < data.csv


#exclude header of csv file

cat data.csv | awk 'NR!=1 {print}' | while IFS=',' read id name age
do
    echo "candidate id is $id"
    echo "candidate name is $name"
    echo "candidate age is $age"
done < data.csv