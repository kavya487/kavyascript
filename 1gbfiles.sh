#!bin/bash

log_dir="/home/ec2-user/logs"
days = 7
find $log_dir -type f 

 
source_dir=$1
dest_dir=$2
days=${3:-14}

mkdir -p /home/ec2-user/logs-directory
usage() {
    echo   usage: <script-name> <source-dir> <des_dir> <days-optional>
}
if [ $# -lt 2 ]
then 
usage
fi


if [ ! -d $source_dir ]
then 
    echo "$source_dir doesnot exist ... please check"
    exit 1
fi

if [ ! -d dest_dir ]
then 
echo "$dest_dir doesnt exist .. please check"

files=$(find $source_dir -name ".log" -mtime +$days)