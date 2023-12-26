#!/bin/bash


#Make digital clock

for (( ;; ))
do
    date | awk '{print $5}'
    sleep 1s
    clear
done