#Given  lines of input, print the  character from each line as a new line of output. It is guaranteed that each of the  lines of input will have a  character.

#!/bin/bash

i=0
while read line
do
    x=${line[@]:2:1}
    echo $x
done

# cut -c 3
