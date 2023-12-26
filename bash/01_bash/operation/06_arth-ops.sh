#!/bin/bash

x=5
y=3

let multiple=$x*$y
echo $multiple

let sub=$x-$y
echo $sub

echo "mutiple of $x and $y is $(($x*$y))"