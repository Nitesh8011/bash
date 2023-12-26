#!/bin/bash

read -p "Enter TR number: " number
read -p "Enter extension: " extension 

DE1=DE1_IP
NQI=NQI_IP
S4=S4_IP
password=password
file1=K$number.$extension
file2=R$number.$extension


echo "Type 'a' for DE1"
echo "Type 'b' for NQI"
echo "Type 'c' for S4"

read -p "Type in which server u wanna login: " server

case $server in
    a) sshpass -p "$password" scp root@$DE1:/usr/sap/trans/cofiles/$file1 /home/nitesh/Documents/TR &&
       sshpass -p "$password" scp root@$DE1:/usr/sap/trans/data/$file2 /home/nitesh/Documents/TR;;

    b) sshpass -p "$password" scp root@$NQI:/usr/sap/trans/cofiles/$file1 /home/nitesh/Documents/TR &&
       sshpass -p "$password" scp root@$NQI:/usr/sap/trans/data/$file2 /home/nitesh/Documents/TR ;;

    c) sshpass -p "$password" scp root@$S4:/usr/sap/trans/cofiles/$file1 /home/nitesh/Documents/TR &&
       sshpass -p "$password" scp root@$S4:/usr/sap/trans/data/$file2 /home/nitesh/Documents/TR;;

    *) echo "Kindly select correct option"
esac

# if [ $? -eq 0 ]
# then
#     echo "$file1 and $file2 transfered successfully"
# else
#     echo "Failed to transfer files"
# fi