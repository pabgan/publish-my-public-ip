#!/bin/bash
output_machine="xxxxx@xxxxxxxxxx.com"
output_folder="./inbox"
hostname=$(hostname)
filename=$hostname"_public_ip.txt"

public_ip=$(curl ipinfo.io/ip)

echo $public_ip > /tmp/$filename
scp /tmp/$filename $output_machine:$output_folder
