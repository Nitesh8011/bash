# Given  N integers, compute their average, rounded to three decimal places.

# Input Format
# The first line contains an integer, N.
# Each of the following N lines contains a single integer.

#!/bin/bash

# read array
# sum=0
# for i in ${array[@]};
# do 
#     sum=$((sum+i))
# done
# avg=$(printf "%.3f" $(echo "scale=4; $sum / ${#array[@]}/1" | bc -l))
# # y=$(echo "scale=4; $sum/${#array[@]}" | bc -l)
# # avg=$(printf "%.3f" $y)
# echo $avg

read N
sum=0
for(( i=0; i<N; i++ ))
do 
    read num
    sum=$(( $sum + $num ))
done 
printf "%.3f\n" `echo "$sum / $N" | bc -l`