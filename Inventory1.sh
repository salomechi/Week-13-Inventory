#!/bin/bash
##Memory Check


##Author : Salome Chitubila
##Date: 10/18/2021


MEM=$(free -m |head -2|tail -1|awk '{print$2}')


if [$MEM -gt 2000 ]
then

echo "Memory Check pass !"
else
echo "Memory Check failed!"

fi


##Processor check


CPU_NUM=`nproc`


if [$CPU_NUM -lt 2 ]
else
echo "Processor check pass!"
fi


##Hard drive check

HHD=`lsblk |head -2|tail -1|awk -'{print$4}' |awk -F. '{print$1}'`

if [ $hhd -gt 100 ]
then

echo "sda check Failed!"
fi

##Check hhtpd.conf file

cat /etc/httpd/httpd.conf
if {  $? -eq 0 }
then
echo "httpd.conf check pass!"
else
echo "File httpd.conf missing!"


fi

or
if [ -f /etc/httpd/httpd.conf ]
then
echo "httpd.conf check pass!"


else
else

echo "File httpd.conf missing!"

fi

## Check the grub.conf file


if [ -f /etc/grub.conf ]
then

echo "The file grub.conf does exist"

else

echo "The file does not exist"
exit 0
fi

