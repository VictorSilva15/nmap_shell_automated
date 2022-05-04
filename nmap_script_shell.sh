#!/bin/bash

clear

# Color variables 

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

# Nmap installation	
	if [ ! -x "$(command -v nmap)" ];then
        echo -e "\n${RED}[+]${NOCOLOR} nmap not detected...Installing\n"
        sudo apt-get install nmap -y > installing;rm installing
	else
    echo -e "${GREEN}[+]${NOCOLOR} nmap detected\n"
     
	fi

echo -e "${GREEN}Which network do you wanna scan: ${NOCOLOR}"
read network

echo -e "${GREEN}Which open port do you want discover:${NOCOLOR}"
read port

echo -e "${GREEN}searching in network $network port $port ...${NOCOLOR}"

nmap -sS -vv -p $port $network
