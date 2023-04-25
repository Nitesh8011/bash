#!/bin/bash

avg (){
    sum=0

    for var in $@
    do
    sum=`expr $sum + $var`
    done
    echo "sum of $@=$sum"
    val=`expr $sum / $#`

    return $val
}

avg 1 2
ret=$?
echo -e "Average of 1 and 2 is $ret"

avg 4 5 6 7
ret=$?
echo -e "Average of 4,5,6 and 7 is $ret"


----------x----------x----------x----------x

#nested function

#!/bin/bash

number_one(){
    echo "This is first function..."
    number_second
}

number_second(){
    echo "This is second function"
}

number_one