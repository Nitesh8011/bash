#!/bin/bash

#Case 01
find /home/nitesh/Documents/personal/ -size 4k

#Case 02
find /home/nitesh/ -type f

#Case 03
find /home/nitesh/ -name 01_cut.sh

#Case 04
find /home/nitesh/ -iname 01_CUT.sh

#Case 05
find /home/nitesh -user root

#Case 06
find /home/nitesh/Documents/personal/bash/github/yt-bash/ -inum 19662750

#Case 07
find /home/nitesh/Documents/personal/bash/github/yt-bash/ 2

#Case 08
find /home/nitesh/ -perm /u=r
find /home/nitesh/ perm 777

#Case 09
find /home/nitesh/Documents/personal/bash/github/yt-bash/ 01_*

#Case 10
find /home/nitesh/Documents/personal/bash/github/yt-bash/ -newer 04_arrays.sh

#Case 11
find /home/nitesh/Documents/personal/bash/github/yt-bash/ -empty

#Case 12
find /home/nitesh/Documents/personal/bash/github/yt-bash/ -empty -exec rm {} \;
find /home/nitesh/Documents/personal/bash/github/yt-bash/ -empty -exec rmdir {} \;

#Case 13
find /home/nitesh/Documents/persona/ -size -1M -size +5M

#Case 14
find /home/nitesh/Documents/personal/bash/github/yt-bash/ -m 15