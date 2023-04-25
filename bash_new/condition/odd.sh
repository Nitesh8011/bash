Your task is to use for loops to display only odd natural numbers from 1 to 99.

#!/bin/bash

n=1
while [ $n -lt 100 ]
do
    odd=$(( $n%2 ))
    if [ $odd -ne 0 ]
    then 
      echo $n
    fi
n=$(( $n+1 ))
done