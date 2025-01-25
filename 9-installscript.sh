#!?bin/bash

 userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "User is having access to install script"
fi

dnf install mysql -y