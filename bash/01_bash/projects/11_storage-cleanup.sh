#!/bin/bash

# storage=$(df -h | awk 'NR==6 {print $5}' | sed 's/%//')
storage=$(sudo df -h | awk 'NR==4 {print $5}' | sed 's/%//')

# if [ $storage -gt 80 ]
if [ $storage -gt 8 ]
then
    # sudo find /opt/MasterDataOnline/logs -type f -name '*.tar.gz' -size +30M -exec rm {} \;
    sudo find /home/nitesh/Downloads -type f -name '*.tar.gz' -size +30M -exec rm {} \;
else
    echo "Storage is fine"
fi