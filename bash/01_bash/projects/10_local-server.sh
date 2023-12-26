#!/bin/bash

read -p "Enter TR number: " number
read -p "Enter extension: " extension

DE1=DE1_IP
NQ1=NQI_IP
S4=S4_IP
password=password
file1=K$number.$extension
file2=R$number.$extension

echo "Press 'a' for DE1"
echo "Press 'b' for NQI"
echo "Press 'c' for S4"

read -p "Enter the server: " server

case $server in
    a) sshpass -p "$password" scp /home/nitesh/Documents/TR/$file1 root@$DE1:/usr/sap/trans/cofiles &&
       sshpass -p "$password" scp /home/nitesh/Documents/TR/$file1 root@$DE1:/usr/sap/trans/data;;

    b) sshpass -p "$password" scp /home/nitesh/Documents/TR/$file1 root@$NQI:/usr/sap/trans/cofiles &&
       sshpass -p "$password" scp /home/nitesh/Documents/TR/$file2 root@$NQI:/usr/sap/trans/data;;

    c) sshpass -p "$password" scp /home/nitesh/Documents/TR/$file1 root@$S4:/usr/sap/trans/cofiles &&
       sshpass -p "$password" scp /home/nitesh/Documents/TR/$file2 root@S4:/usr/sap/trans/data;;
    
    *) echo "Kindly select correct option"
esac

# if [ $? -eq 0 ]
# then
#     echo "$file1 and $file2 transfered successfully"
# else
#     echo "Failed to send file to server"
# fi