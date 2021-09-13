#!/bin/bash
clear
echo -n "Which network do you wanna scan: "
read network
echo -n "Which open port do you want discover:"
read port

echo "searching in network $network port $port ..."

nmap -sS -vv -p $port $network
