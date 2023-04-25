#!/bin/bash

n=13

until [ $n -lt 10]
do
    echo $n
    n=`expr $n + 1`
done

#13,12,11,10