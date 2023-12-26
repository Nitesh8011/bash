#!/bin/bash

basename /home/nitesh/Documents/personal/bash/github/yt-bash/24_extra-cmd.sh
#Ans 24_extra-cmd.sh

dirname /home/nitesh/Documents/personal/bash/github/yt-bash/24_extra-cmd.sh
#Ans /home/nitesh/Documents/personal/bash/github/yt-bash

realpath /home/nitesh/Documents/personal/bash/github/yt-bash/24_extra-cmd.sh
#Ans /home/nitesh/Documents/personal/bash/github/yt-bash/24_extra-cmd.sh

# if [ -d folder_name] --> If folder exists
# if [ ! -d folder_name] --> If folder not exists

# if [ -f file_name] --> If file exists
# if [ ! -f file_name] --> If file not exists

# >> --> append
# > --> overwrite

echo "this file name is ${0}"

# set -x --> if wanna run it in debugging mode
# set -e --> if you wanna exit from script if any cmd fails