```markdown
# Web Server Configuration Tasks

This repository contains solutions to various tasks related to configuring and managing a web server using Nginx. Each task addresses specific requirements and is implemented using Bash scripts or Puppet manifests.

## Task 0: Transfer a file to your server

Write a Bash script that transfers a file from a client to a server using `scp`. The script accepts four parameters: the path to the file, the server's IP address, the username for `scp` connection, and the path to the SSH private key. If less than four parameters are provided, the script displays usage instructions.

**Usage:**
```bash
./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
```

## Task 1: Install Nginx web server

Install and configure the Nginx web server on a specified server. Nginx should listen on port 80 and return a page containing the string "Hello World!" when queried at its root (`/`). The solution involves writing a Bash script that configures a new Ubuntu machine to meet the requirements using the `-y` option with `apt-get` and without using `systemctl` for restarting Nginx.

**Usage:**
```bash
./1-install_nginx_web_server
```

## Task 2: Setup a domain name

Set up a domain name and configure DNS records to point to the server's IP address. The domain name should be provided without a subdomain, and an A entry should be configured to map the root domain to the server's IP address.

**Example:**
```
myschool.tech
```

## Task 3: Redirection

Configure the Nginx server to redirect requests from `/redirect_me` to another page using a "301 Moved Permanently" status code. The solution involves replacing a line with multiple lines using `sed` and writing commands to automatically configure a new Ubuntu machine to meet the redirection requirements.

## Task 4: Not found page 404

Configure the Nginx server to display a custom 404 page containing the string "Ceci n'est pas une page" when a resource is not found. The server must return an HTTP 404 error code.

## Task 5: Install Nginx web server (w/ Puppet) [Advanced]

Configure the Nginx server using Puppet instead of Bash. The Puppet manifest should install Nginx, configure it to listen on port 80, return a page containing the string "Hello World!" when queried at its root (`/`), and perform a 301 redirect for requests to `/redirect_me`.

```

In each section, provide a brief description of the task, including its objective and requirements. Additionally, include usage instructions or examples where applicable.
