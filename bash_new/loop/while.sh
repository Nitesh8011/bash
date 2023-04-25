#!/bin/bash
i=1
while [[ $i -le 10 ]] ; do
   echo "$i"
  (( i += 1 ))
done


n=1
while [ $n -le 9 ]
do 
  echo $n
  n=`expr $n + 1`
done