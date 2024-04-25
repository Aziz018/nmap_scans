#!/bin/bash

# Print the options with color
echo -e "\e[1;34mA = basic scan\e[0m"
echo -e "\e[1;34mB = port scan\e[0m"
echo -e "\e[1;34mC = version scan\e[0m"
echo -e "\e[1;34mD = TCP connect scan\e[0m"
echo -e "\e[1;34mE = stealthy TCP syn scan\e[0m"
echo -e "\e[1;34mF = OS detection scan\e[0m"
echo -e "\e[1;34mG = TCP ACK scan\e[0m"
echo -e "\e[1;34mH = UDP scan\e[0m"
echo -e "\e[1;34mI = IP protocol scan\e[0m"
echo -e "\e[1;34mJ = NULL scan\e[0m"
echo -e "\e[1;34mK = FIN scan\e[0m"
echo -e "\e[1;34mL = XMAS scan\e[0m"
echo -e "\e[1;34mM = IP address scan\e[0m"
echo -e "\e[1;34mN = port scanning with IP\e[0m"
echo -e "\e[1;34mO = OS detection with IP\e[0m"
echo -e "\e[1;34mP = version scanning with IP\e[0m"
echo -e "\e[1;34mQ = port scanning\e[0m"

read -p "option=: " op

if [[ $op == "A" || $op == "B" || $op == "C" || $op == "D" || $op == "E" || $op == "F" || $op == "G" || $op == "H" || $op == "I" || $op == "J" || $op == "K" || $op == "L" || $op == "M" || $op == "N" || $op == "O" || $op == "P" || $op == "Q" ]]; then
    read -p "Enter IP address for scan: " ip
    case $op in
        A) echo -e "\e[1;32mNmap starting basic scan on $ip\e[0m" && nmap -vv $ip;;
        B) echo -e "\e[1;32mNmap starting port scan on $ip\e[0m" && nmap -sP -vv $ip;;
        C) echo -e "\e[1;32mNmap starting version scan on $ip\e[0m" && nmap -sV -vv $ip;;
        D) echo -e "\e[1;32mNmap starting TCP connect scan on $ip\e[0m" && nmap -sT $ip;;
        E) echo -e "\e[1;32mNmap starting stealthy TCP syn scan on $ip\e[0m" && nmap -sS $ip;;
        F) echo -e "\e[1;32mNmap starting OS detection scan on $ip\e[0m" && nmap -O $ip;;
        G) echo -e "\e[1;32mNmap starting TCP ACK scan on $ip\e[0m" && nmap -sA $ip;;
        H) echo -e "\e[1;32mNmap starting UDP scan on $ip\e[0m" && nmap -sU $ip;;
        I) echo -e "\e[1;32mNmap starting IP protocol scan on $ip\e[0m" && nmap -sO $ip;;
        J) echo -e "\e[1;32mNmap starting NULL scan on $ip\e[0m" && nmap -sN $ip;;
        K) echo -e "\e[1;32mNmap starting FIN scan on $ip\e[0m" && nmap -sF $ip;;
        L) echo -e "\e[1;32mNmap starting XMAS scan on $ip\e[0m" && nmap -sX $ip;;
        M) echo -e "\e[1;32mNmap starting IP address scan on $ip\e[0m" && nmap -sL $ip;;
        N) echo -e "\e[1;32mNmap starting port scanning with IP $ip\e[0m" && nmap -sP -vv $ip;;
        O) echo -e "\e[1;32mNmap starting OS detection with IP $ip\e[0m" && nmap -O $ip;;
        P) echo -e "\e[1;32mNmap starting version scanning with IP $ip\e[0m" && nmap -sV -vv $ip;;
        Q) echo -e "\e[1;32mNmap starting port scanning\e[0m" && nmap -sS -vv $ip;;
    esac
else
    echo -e "\e[1;31mInvalid option\e[0m"
fi
