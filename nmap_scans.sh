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
    1) echo -e "Starting TCP SYN Scan\n" && sudo nmap -sS "$target" ;;
    2) echo -e "Starting TCP Connect Scan\n" && sudo nmap -sT "$target" ;;
    3) echo -e "Starting TCP ACK Scan\n" && sudo nmap -sA "$target" ;;
    4) echo -e "Starting TCP FIN Scan" && sudo nmap -sF "$target" ;;
    5) echo -e "Starting TCP Xmas Scan" && sudo nmap -sX "$target" ;;
    6) echo -e "Starting TCP Null Scan" && sudo nmap -sN "$target" ;;
    7) echo -e "Starting UDP Scan" && sudo nmap -sU "$target" ;;
    8) echo -e "Starting TCP Window Scan" && sudo nmap -sW "$target" ;;
    9) echo -e "Starting TCP Maimon Scan" && sudo nmap -sM "$target" ;;
    10) echo -e "Starting TCP RPC Scan" && sudo nmap -sR "$target" ;;
    11) echo -e "Starting Version Detection" && sudo nmap -sV "$target" ;;
    12) echo -e "Starting OS Detection" && sudo nmap -O "$target" ;;
    13) echo -e "Starting Aggressive Scan" && sudo nmap -A "$target" ;;
    14) echo -e "Starting Script Scan" && sudo nmap -sC "$target" ;;
    15) echo -e "Starting IP Protocol Scan" && sudo nmap -sO "$target" ;;
    16) echo -e "Starting Idle Scan" && sudo nmap -sI "$target" ;;
    17) echo -e "Starting Fragmentation Scan" && sudo nmap -f "$target" ;;
    18) echo -n "Enter your options: "; read opts; sudo nmap $opts "$target" ;;
    *)  echo "Invalid option. Please choose a number between 1 and 18." ;;
esac
