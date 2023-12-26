#!/bin/bash

read -p "Enter first number: " n1
read -p "Enter second number: " n2

add(){
    let n3=$n1+$n2
    echo "sum of $n1 and $n2 is $n3"
}

sub(){
    let n4=$n1+$n2
    echo "sum of $n1 and $n2 is $n4"
}

multi(){
    let n5=$n1*$n2
    echo "Multiple of $n1 and $n2 is $n5"
}

division(){
    let n6=n1/n2
    echo "Divsion of $n1 and $n2 is $n6"
}

add $n1 $n2
sub $n1 $n2
multi $n1 $n2
division $n1 $n2