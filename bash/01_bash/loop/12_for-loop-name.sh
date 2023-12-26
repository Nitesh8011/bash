#!/bin/bash

for j in nitesh mikul vaibhav
do
    echo "name is $j"
done

#if loop to read from file

path=/home/nitesh/Documents/personal/bash/github/yt-bash/name.txt

for i in $(cat $path)
do
    echo "name is $i"
done