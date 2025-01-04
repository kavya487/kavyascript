#!bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then 
      echo "error : you must have sudo access to execute this script"
      exit 1
fi

 dnf install mysql -y
if  [ $? -ne 0 ]
 then 
      echo "Error: "installing mysql... failure"
      exit 1
else
      echo "Error: "Installing mysql ... success"
fi        
 
 dnf install git -y
 if  [ $? -ne 0 ]
 then 
      echo "Error: "installing git... failure"
      exit 1
else
      echo "Error: "Installing git ... success"
fi   
