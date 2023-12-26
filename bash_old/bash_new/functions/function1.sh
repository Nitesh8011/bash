#!/bin/bash

#Calling without arguments

hello(){
    echo "Am inside hellow() function"
    echo "hello function!!"
}

echo "Calling the function"
hello
echo "calling second time"
hello

#Calling with arguments

check(){
    if [ $1 -eq $2 ]
    then
        echo "$1 is equal to $2"
    else
        echo "$1 is not equal to $2"
    fi
}

a=1
b=1
check $a $b

c=4
d=2
check $c $d