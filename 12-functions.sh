#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run this script with sudo access"
   exit 1
    fi 

    validate(){
    if [$1 -eq 0]; then
        echo "${2}.. Failed"
        exit 1
    else
        echo "${2}.. SUCCESS"
        fi
    }


   echo "proceeding"
    dnf install nginx -y
    validate $? "nginx installation"


   
    dnf install mysql -y
    validate $? "mysql installation"


    echo "still proceeded...."