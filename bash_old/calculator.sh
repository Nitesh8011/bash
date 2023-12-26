#! /usr/bin/bash

echo "Input your first number..."
read a

echo "Input your second number..."
read b 

var1=$((a+b))
echo "Sum of two number is "$var1

var2=$((a-b))
echo "Subtraction of these two number is "$var2

var3=$((a*b))
echo "Multiplication of these number is "$var3

var4=$((a/b))
echo "Division of these two number is "$var4
