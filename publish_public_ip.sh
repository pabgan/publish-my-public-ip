#!/bin/bash
output_folder="./inbox"
hostname=$(hostname)
filename=$hostname"_public_ip.txt"
public_ip=$(curl ipinfo.io/ip)

echo $public_ip > $filename
scp $filename pablo@guaranuzas.com:$output_folder
