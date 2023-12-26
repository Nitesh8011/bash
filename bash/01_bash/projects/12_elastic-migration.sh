#!/bin/bash

source=https://source_ip
source_user=admin
source_pswd=admin

destination=https://destination_ip
dest_user=admin
dest_pswd=admin

workidir=/home/nitesh/Documents/personal/bash/github/yt-bash/projects

curl -ku $source.user:$source.pswd '$source/_cat/indices' | awk '{print $3}' > $workidir/indices_file

echo "Starting to do reindexing"
count=1

while IFS= read -r index_name
do

    echo $count $index_name

    curl -ku $dest_user:$dest_pswd 'destination/_reindex' \
    --header 'Content-Type: application/json' \
    --data '{
    "source": {
        "remote": {
            "host": "$source",
            "username": "$source.user",
            "password": "$source.pswd"
            },
        "index": "$index_name",
        "query": {
            "match_all": {}
        }
    },
    "dest": {
        "index": "$index_name"
        }
    }'

    if [ $? -eq 0 ]
    then
        echo "$index_name indices migrated sucessfully" > $workidir/error_file
    else
        echo "$index_name FAILED to migrate."
    fi
    count=(($count++))
done < $indices_file
