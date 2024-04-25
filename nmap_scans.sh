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



# TCP SYN Scan (-sS): Also known as half-open scanning, it sends SYN packets to initiate a TCP connection. It's stealthy and fast.
# TCP Connect Scan (-sT): This scan type completes the TCP three-way handshake, making it more reliable but less stealthy than SYN scanning.
# TCP ACK Scan (-sA): It sends ACK packets to determine whether ports are filtered by firewalls. It doesn't establish a full connection.
# TCP FIN Scan (-sF): It sends FIN packets to check if ports are closed. Closed ports should send back a RST packet, while open ones will ignore the FIN packet.
# TCP Xmas Scan (-sX): Similar to FIN scan, but it sets multiple TCP flags (FIN, URG, and PSH) to probe ports.
# TCP Null Scan (-sN): This scan type sets no TCP flags, expecting different behavior from closed and open ports.
# UDP Scan (-sU): It sends UDP packets to a range of ports and waits for responses. UDP is connectionless, so this scan is less reliable.
# TCP Window Scan (-sW): It analyzes the TCP Window field to determine open ports.
# TCP Maimon Scan (-sM): It impersonates a specific source IP and port by sending SYN packets.
# TCP RPC Scan (-sR): It enumerates RPC services by sending RPC queries to a range of ports.
# Version Detection (-sV): It probes open ports to determine the services and versions running on them.
# OS Detection (-O): It tries to determine the operating system of the target by analyzing network packets.
# Aggressive Scan (-A): This combines several scan types like version detection, OS detection, script scanning, and traceroute into one command.
# Script Scan (-sC): It runs default Nmap scripts against the target to gather more information.
# IP Protocol Scan (-sO): It determines which IP protocols (TCP, UDP, ICMP, etc.) are supported by the target.
# Idle Scan (-sI): Also known as zombie scan, it uses a third-party host to hide the attacker's identity.
# Fragmentation Scan (-f): It sends fragmented packets to bypass packet filters and firewalls.