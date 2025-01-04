#!bin/bash

userid=$(id -u)

validate(){

      if  [ $1 -ne 0 ]
       then 
      echo "$2... failure"
      exit 1
       else
      echo  "$2 ... success"
      fi

}


if [ $userid -ne 0 ]
 then 
      echo "error : you must have sudo access to execute this script"
      exit 1
fi

dnf list installed mysql server
if [ $? -ne 0]
then
     dnf install mysql -y
    validate $?  "installing mysql"
else
       echo "mysql server is already installed"
fi        
 
dnf list installed git server
if [ $? -ne 0 ]
then
      dnf install git -y
    validate $? "installing git"
      
else 
      echo "git is already installed"
fi
