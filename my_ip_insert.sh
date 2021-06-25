#!/bin/bash

#return your computer IP
IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

#create from template main.tf
sed -e "s/my_ip/$IP\/32/g " jenk_server_template >main.tf

