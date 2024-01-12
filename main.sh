#!/bin/bash

GREEN='\e[0;32m'
NO_COLOR='\033[0m'

calculateListOfHosts() {
	nmap -sL $host | awk '/Nmap scan report for/ {gsub(/[()]/, "", $NF); print $NF}'
}

quickScan() {
	nmap -T4 -d -F $host
}

host=$1

calculatedListOfHost=$(calculateListOfHosts $host)

printf "$GREEN ------- listing possible hosts -------"
printf "$NO_COLOR \n"

printf "$calculatedListOfHost"
echo

listValidation="n"

while [ $listValidation != "y" ]; do
	read -p "Is the list correct?: (y/n) " value
	echo "$value"
	listValidation=$value
	if [ $value != "y" ]; then

		read -p "enter hosts: " host
		echo
		calculatedListOfHost=$(calculateListOfHosts $host)
		printf "$calculatedListOfHost\n"
	fi
done


printf "$GREEN ------- quick scan -------"
printf "$NO_COLOR \n"


quickScanResult=$(quickScan $host)

printf "$quickScanResult"
