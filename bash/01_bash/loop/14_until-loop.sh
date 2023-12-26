#!/bin/bash

#until loop is opposite of while loop
#it'll run until true condition doesn't meet

max=10

until [ $max -eq 1 ]
do
    echo "$max"
    max=`expr $max - 1`
done