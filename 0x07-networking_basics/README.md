Project: Networking Basics
0. OSI model
Overview
The OSI (Open Systems Interconnection) model is an abstract framework describing layered communication and computer network design. It aims to segregate different components contributing to communication.

Organization
The OSI model is organized from the lowest level to the highest level:

Layer 1: Transmission on physical layers (electrical impulse, light, or radio signal).
Layer 7: Application-specific communication (e.g., SNMP for emails, HTTP for web browsers).
Project Focus
In this project, our focus will be on:

Transport layer, especially TCP/UDP.
Network layer with IP and ICMP.

Questions:
What is the OSI model?

The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology.
How is the OSI model organized?

From the lowest to the highest level.
Repository Location:

GitHub: alx-system_engineering-devops
Directory: 0x07-networking_basics
File: 0-OSI_model
1. Types of network
Overview
Different types of networks serve distinct purposes, connecting devices locally or over longer distances.

Questions:
What type of network is a computer in a local connected to?

LAN (Local Area Network)
What type of network could connect offices a few streets away?

WAN (Wide Area Network)
What network is used when browsing www.google.com from a smartphone (not connected to Wi-Fi)?

Internet
Repository Location:

GitHub: alx-system_engineering-devops
Directory: 0x07-networking_basics
File: 1-types_of_network
2. MAC and IP address
Overview
Understanding MAC and IP addresses is crucial in networking.

Questions:
What is a MAC address?

The unique identifier of a network interface.
What is an IP address?

It is to devices connected to a network what a postal address is to houses.
Repository Location:

GitHub: alx-system_engineering-devops
Directory: 0x07-networking_basics
File: 2-MAC_and_IP_address
3. UDP and TCP
Overview
Differentiating between UDP and TCP, two key protocols for data transfer.

Questions:
Correct statement for the TCP box:

It is a protocol that transfers data in a slow way but surely.
Correct statement for the UDP box:

It is a protocol that transfers data in a fast way and might lose data in the process.
Correct statement for the TCP worker:

May I increase the rate at which I am sending you boxes?
Repository Location:

GitHub: alx-system_engineering-devops
Directory: 0x07-networking_basics
File: 3-UDP_and_TCP
4. TCP and UDP ports
Overview
Understanding TCP and UDP ports, essential for network communication.

Instructions
Write a Bash script that displays listening ports, showing the PID and program to which each socket belongs.

Example:

bash
Copy code
sudo ./4-TCP_and_UDP_ports
Repository Location:

GitHub: alx-system_engineering-devops
Directory: 0x07-networking_basics
File: 4-TCP_and_UDP_ports
5. Is the host on the network
Overview
Using ICMP to check if a network device is available on the network.

Instructions
Write a Bash script that pings an IP address passed as an argument.

Example:

bash
Copy code
./5-is_the_host_on_the_network 8.8.8.8
Repository Location:

GitHub: alx-system_engineering-devops
Directory: 0x07-networking_basics
File: 5-is_the_host_on_the_network
