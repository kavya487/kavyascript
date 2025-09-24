#!?bin/bash

 userid=$(id -u)

if [ $userid -ne 0 ]
    then
    echo "User is  not having access to install script"
    exit 1
    fi

dnf install mysql -y
if [ $? -ne 0 ]
then 
   echo " not installing myscript"
   exit 1
else 
    echo "install mysql"
fi


dnf install git -y
if [ $? -ne 0 ]
then 
   echo " not installing myscript"
   exit 1
else 
    echo "install mysql"
fi



var= "/var/log/log.sh"

if [ -e = var  ] then
echo  "file exists"
else
 echo 