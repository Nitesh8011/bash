#!/bin/bash

fun(){
    echo "My name is $1 and im $2 year old"
}

fun $1 $2

echo "number of argument passed $#"
echo "all argument are $@"

#for loop to print all arguments

for arg in $@
do
    echo "arguments are $arg"
done