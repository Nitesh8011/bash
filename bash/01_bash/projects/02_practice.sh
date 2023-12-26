#How to make a script to archive older log files.

#!/bin/bash

BASE=/home/nitesh/Documents/personal/
DEPTH=5
RUN=0

if [ ! -d $BASE ]
then
    echo "$BASE doesn't exits!!"
# else
#     mkdir $BASE/archive
fi

if [ ! -d $BASE ]
then
    mkdir $BASE/archive
fi

for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
    if [ $RUN -eq 0 ]
    then
        echo "$(date "+%Y-%m-%d %H:%M:%S") archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done