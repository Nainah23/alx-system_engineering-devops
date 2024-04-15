Firewall Configuration Project
Overview
This project focuses on configuring firewalls using the Uncomplicated Firewall (ufw) utility on web servers. The tasks include blocking incoming traffic and setting up port forwarding.

Task 0: Block All Incoming Traffic Except Specific Ports
Description
In this task, we configure the ufw firewall on the web-01 server to block all incoming traffic except for specific TCP ports: 22 (SSH), 443 (HTTPS SSL), and 80 (HTTP).

Requirements
Configure ufw to block all incoming traffic except for ports 22, 443, and 80.
Provide the ufw commands used to achieve this configuration.
Solution
To accomplish this task, follow these steps:

SSH into the web-01 server.
Install the ufw firewall if not already installed.
bash
Copy code
sudo apt-get update
sudo apt-get install ufw
Configure ufw to allow SSH, HTTPS, and HTTP traffic:
bash
Copy code
sudo ufw allow 22/tcp
sudo ufw allow 443/tcp
sudo ufw allow 80/tcp
sudo ufw enable
Verify the firewall rules:
bash
Copy code
sudo ufw status verbose
Repository Information
GitHub Repository: alx-system_engineering-devops
Directory: 0x13-firewall
File: 0-block_all_incoming_traffic_but
Task 1: Port Forwarding
Description
In this advanced task, we configure web-01 to forward port 8080/TCP traffic to port 80/TCP.

Requirements
Configure web-01 to forward port 8080/TCP to port 80/TCP.
Provide the modified ufw configuration file that implements this port forwarding.
Solution
To achieve port forwarding from 8080 to 80 on web-01, follow these steps:

SSH into the web-01 server.
Edit the ufw configuration file to enable port forwarding:
bash
Copy code
sudo nano /etc/default/ufw
Add or modify the following line to enable port forwarding:
makefile
Copy code
DEFAULT_FORWARD_POLICY="ACCEPT"
Edit the ufw rules to perform port forwarding:
bash
Copy code
sudo nano /etc/ufw/before.rules
Add the following lines before the filter section:
less
Copy code
*nat
:PREROUTING ACCEPT [0:0]
-A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
COMMIT
Restart ufw to apply the changes:
bash
Copy code
sudo ufw disable
sudo ufw enable
Repository Information
GitHub Repository: alx-system_engineering-devops
Directory: 0x13-firewall
File: 100-port_forwardin
