#!/bin/bash

echo "Choose an Nmap scan type:"
echo "1: ........... TCP SYN Scan (-sS)"
echo "2: ........... TCP Connect Scan (-sT)"
echo "3: ........... TCP ACK Scan (-sA)"
echo "4: ........... TCP FIN Scan (-sF)"
echo "5: ........... TCP Xmas Scan (-sX)"
echo "6: ........... TCP Null Scan (-sN)"
echo "7: ........... UDP Scan (-sU)"
echo "8: ........... TCP Window Scan (-sW)"
echo "9: ........... TCP Maimon Scan (-sM)"
echo "10: .......... TCP RPC Scan (-sR)"
echo "11: .......... Version Detection (-sV)"
echo "12: .......... OS Detection (-O)"
echo "13: .......... Aggressive Scan (-A)"
echo "14: .......... Script Scan (-sC)"
echo "15: .......... IP Protocol Scan (-sO)"
echo "16: .......... Idle Scan (-sI)"
echo "17: .......... Fragmentation Scan (-f)"
echo "18: .......... Specific Options"

echo -n "Enter your choice: "; read opt
echo -n "Enter the IP address: "; read target

case $opt in
    1) nmap -sS "$target" ;;
    2) nmap -sT "$target" ;;
    3) nmap -sA "$target" ;;
    4) nmap -sF "$target" ;;
    5) nmap -sX "$target" ;;
    6) nmap -sN "$target" ;;
    7) nmap -sU "$target" ;;
    8) nmap -sW "$target" ;;
    9) nmap -sM "$target" ;;
    10) nmap -sR "$target" ;;
    11) nmap -sV "$target" ;;
    12) nmap -O "$target" ;;
    13) nmap -A "$target" ;;
    14) nmap -sC "$target" ;;
    15) nmap -sO "$target" ;;
    16) nmap -sI "$target" ;;
    17) nmap -f "$target" ;;
    18) echo -n "Enter your options: "; read opts; nmap $opts "$target" ;;
    *)  echo "Invalid option. Please choose a number between 1 and 18." ;;
esac
