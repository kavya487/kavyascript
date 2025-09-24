#!/bin/bash

uid=$(id -u)

log_folder="/var/log/shellscript-logs"
log_file=$(echo $0 | cut -d "." -f1)
timestamp=$(date +%Y-%m-%d-%H-%M-%S)
log_file_name="$log_folder/$log_file-$timestamp.log"

if [ $uid -ne 0 ]
then
    echo "u must have root access"
    exit 1
fi

echo "script was executed at  $log_file_name"

for package in $@
do

dnf list installed $package &>>$log_file_name
if 
[ $? -ne 0 ]
then
dnf install $package -y
       if [ $? -ne 0 ]
        then 
        echo "$package was not installed" &>>$log_file_name
        else
        echo "$package was installed successfully" &>>$log_file_name
        fi
else
echo "$package was already installed"
fi

done