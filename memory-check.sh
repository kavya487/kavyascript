#!bin/bash

Threshold = 600

available = $(free -m | awk '\Mem\{print $7}')

echo "avaialbe memory is : $available:MB 

if [ "$Threshold -lt  $available" ]
then 
    echo "warning: Low Memory!only ${available} is available"
else 
    echo "memory is sufficicnet: ${avaialble}Mb avaialble"
fi
