#!?bin/bash

 userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "User is  not having access to install script"
exit 0
fi

dnf install mysqll -y


dnf install git -y