#!bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then 
      echo "error : you must have sudo access"
fi

dnf install mysql -y