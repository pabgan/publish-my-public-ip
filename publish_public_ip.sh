#!/bin/bash
output_folder="./inbox"
hostname=$(hostname)
public_ip=$(curl ipinfo.io/ip)

echo $public_ip > public_ip.txt
scp public_ip.txt pablo@guaranuzas.com:$output_folder
