#!?bin/bash

 userid=$(id -u)

if [ $userid -ne 0 ]
    then
    echo "User is  not having access to install script"
    exit 1
    fi

dnf install mysqll -y
then 
   echo "installing myscript"
   fi


dnf install git -y
then 
   echo "installing git"
   fi

