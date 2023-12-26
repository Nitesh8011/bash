#!/bin/bash

esl_Url=192.168.10.35:31452
username=elastic-internal
password=password

workdir=/home/nitesh/Documents/personal/bash/github/yt-bash/projects

curl -ku $username:$password https://$esl_Url/_cat/indices > $workdir/indices.txt
cat $workdir/indices.txt | awk '$7=='0' {print $3}' > $workdir/zero_doc.txt


echo "Starting to delete indices"
count=1

while IFS= read -r index_name
do
    doc_count=$(curl --request GET -ku $username:$password https://$esl_Url/_cat/count/$index_name?h=count -s)

    echo $count $index_name $doc_count

    if [ $doc_count -eq 0 ]
    then
        echo "Deleteing $index_name"
        curl --request DELETE -ku $username:$passsword https://$esl_Url/$index_name
        echo "DELETED"
    fi
    count=$(($count++))
done < $workdir/zero_doc.txt
