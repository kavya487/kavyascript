#!bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then 
      echo "error : you must have sudo access to execute this script"
      exit 1
fi

dnf list installed mysql server
if [ $? -ne 0]
then
     dnf install mysql -y

      if  [ $? -ne 0 ]
       then 
      echo "installing mysql... failure"
      exit 1
       else
      echo  "Installing mysql ... success"
      fi
else
       echo "mysql server is already installed"
fi        
 
 dnf install git -y
 if  [ $? -ne 0 ]
 then 
      echo "installing git... failure"
      exit 1
else

      echo  "Installing git ... success"
fi   
