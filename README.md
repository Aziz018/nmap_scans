# nmap_scans



<h1> TCP SYN Scan (-sS): Also known as half-open scanning, it sends SYN packets to initiate a TCP connection. It's stealthy and fast.</h1>
<h1> TCP Connect Scan (-sT): This scan type completes the TCP three-way handshake, making it more reliable but less stealthy than SYN scanning.</h1>
<h1> TCP ACK Scan (-sA): It sends ACK packets to determine whether ports are filtered by firewalls. It doesn't establish a full connection.</h1>
<h1> TCP FIN Scan (-sF): It sends FIN packets to check if ports are closed. Closed ports should send back a RST packet, while open ones will </h1>ignore the FIN packet.
<h1> TCP Xmas Scan (-sX): Similar to FIN scan, but it sets multiple TCP flags (FIN, URG, and PSH) to probe ports.</h1>
<h1> TCP Null Scan (-sN): This scan type sets no TCP flags, expecting different behavior from closed and open ports.</h1>
<h1> UDP Scan (-sU): It sends UDP packets to a range of ports and waits for responses. UDP is connectionless, so this scan is less reliable.</h1>
<h1> TCP Window Scan (-sW): It analyzes the TCP Window field to determine open ports.</h1>
<h1> TCP Maimon Scan (-sM): It impersonates a specific source IP and port by sending SYN packets.</h1>
<h1> TCP RPC Scan (-sR): It enumerates RPC services by sending RPC queries to a range of ports.</h1>
<h1> Version Detection (-sV): It probes open ports to determine the services and versions running on them.</h1>
<h1> OS Detection (-O): It tries to determine the operating system of the target by analyzing network packets.</h1>
<h1> Aggressive Scan (-A): This combines several scan types like version detection, OS detection, script scanning, and traceroute into one </h1>command.
<h1> Script Scan (-sC): It runs default Nmap scripts against the target to gather more information.</h1>
<h1> IP Protocol Scan (-sO): It determines which IP protocols (TCP, UDP, ICMP, etc.) are supported by the target.</h1>
<h1> Idle Scan (-sI): Also known as zombie scan, it uses a third-party host to hide the attacker's identity.</h1>
<h1> Fragmentation Scan (-f): It sends fragmented packets to bypass packet filters and firewalls.</h1>