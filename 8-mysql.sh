#!bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then 
      echo "error : you must have sudo access to execute this script"
      exit 1
fi

 dnf install mysql -y
 dnf install git -y