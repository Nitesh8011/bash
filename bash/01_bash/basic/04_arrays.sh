#!/bin/bash

array=(1 3 Hello "Guys !!")

#two ways to pring whole array
echo "${array[*]}"
echo "${array[@]}"

echo "${array[0]}"
echo "${array[3]}"

echo "${#array[*]}"


# adding from array
array+=(again "bye guys!!")
echo "${array[*]}"

# deleting from array
unset array[4]
echo "${array[*]}"

# from back= -1 means last array
unset array[-1]
echo "${array[*]}"


declare -A sport
sport=(
    [sport1]=football
    [sport2]=cricket
    [sport3]=hockey
    [sport4]=kabaddi
)

echo ${sport[*]}
echo ${sport[sport2]}