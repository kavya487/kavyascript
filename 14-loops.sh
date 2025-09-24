#!/bin/bash

uid=$(id -u)

log_folder="/var/log/shellscript-logs/
log_file=$((echo $0) | cut -d "." -f1)
timestamp=$(date +%Y-%m-%D-%H-%M-%S)

