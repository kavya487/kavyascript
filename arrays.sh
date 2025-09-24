#!/bin/bash

uid=$(id -u)


source_dir="/home/ec2-user/app-logs"

log_folder="/var/log/shellscript-logs"
log_file=$( echo $0 | cut -d "." -f1)
timestamp=$(date +%Y-%m-%d-%H-%M-%S)
log_file_path="$log_folder/$log_file-$timestamp.log"

if [ id -ne 0 ]
then
  echo "u must have rrot access"
  exit 1
fi

files_to_delete=$(find $source_dir -name "*.log" -mtime +14days)
echo "files to be deleted is $files_to_delete"  &>> $log_file_path
while read -r filepath
do
echo "files to delete are $filepath"
rm -rf $filepath
done <<< $files_to_delete