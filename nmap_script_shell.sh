#!/bin/bash
clear

# Color variables 

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

function nmap_verify () {
  if [ ! -x "$(command -v nmap)" ];then
        echo -e "\n${RED}[+]${NOCOLOR} nmap not detected...Installing\n"
        sudo apt-get install nmap -y > installing;rm installing
	else
    echo -e "${GREEN}[+]${NOCOLOR} nmap detected\n"
     
	fi
}

function nmap_scan () {
  echo -n "Which network do you wanna scan: "
  read network
  echo -n "Which open port do you want discover:"
  read port

  echo "${GREEN}searching in network $network port $port ...${NOCOLOR}"

  sudo nmap -sS -sV -A -vv -p$port $network
}

# Call Functions

nmap_verify
nmap_scan
