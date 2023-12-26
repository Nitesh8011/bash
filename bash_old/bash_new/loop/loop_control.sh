#BREAK

#!/bin/bash
a=0
while [ $a -lt 10 ]
do
    echo $a
    if [ $a -eq 5 ]; then
        break
    fi
    a=`expr $a + 1`
done

#Ans - 0,1,2,3,4,5


#CONTINUE

#!/bin/bash
a="1 2 3 4 5 6 7 8 9"
for n in $a
do
    if [ $n -eq 5 ]; then
        continue     
    fi
    echo $n
    n=`expr $n + 1`
done

#Ans - 0,1,2,3,4,6,7,8,9

