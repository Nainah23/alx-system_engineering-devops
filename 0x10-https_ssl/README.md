 and SSL Termination with HAProxy
This project aims to demonstrate the configuration of HTTPS and SSL termination using HAProxy. It includes tasks related to setting up subdomains, configuring HAProxy to handle encrypted traffic, and enforcing HTTPS redirection.

Table of Contents
Tasks Overview
Getting Started
Task Descriptions
HAProxy Configuration Files
References
Tasks Overview
The project consists of the following tasks:

World wide web

Configure domain zone to point subdomains to specific IPs.
Write a Bash script to display information about subdomains.
HAproxy SSL termination

Configure HAProxy to handle encrypted traffic for the www subdomain.
No loophole in your website traffic (Advanced)

Configure HAProxy to automatically redirect HTTP traffic to HTTPS.
Getting Started
To set up and run the project, follow these steps:

Clone the repository:

bash
Copy code
git clone https://github.com/your-username/alx-system_engineering-devops.git
Navigate to the 0x10-https_ssl directory:

bash
Copy code
cd alx-system_engineering-devops/0x10-https_ssl
Follow the instructions provided in each task's README.md file to complete the tasks.

Task Descriptions
Task 0: World wide web
This task involves configuring domain zones and writing a Bash script to display information about subdomains.

Task 1: HAproxy SSL termination
Configure HAProxy to handle encrypted traffic for the www subdomain.

Task 2: No loophole in your website traffic (Advanced)
Configure HAProxy to automatically redirect HTTP traffic to HTTPS.

HAProxy Configuration Files
1-haproxy_ssl_termination: HAProxy configuration file for SSL termination.
100-redirect_http_to_https: HAProxy configuration file for redirecting HTTP traffic to HTTPS.
References
HAProxy Documentation
Certbot Documentation


