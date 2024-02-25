# Web Infrastructure Design

## Project Overview
This project focuses on designing various web infrastructures to host the website www.foobar.com. Each task involves different configurations to address specific requirements and challenges.

### Task 0: Simple Web Stack
In this task, we design a one-server web infrastructure using a LAMP stack. The setup includes a single server with Nginx as the web server, an application server, a MySQL database, and the necessary domain configuration for www.foobar.com.

#### Key Points
- **Server Components:**
  - 1 server
  - 1 Nginx web server
  - 1 application server
  - 1 MySQL database
  - 1 application codebase

- **Infrastructure Details:**
  - Explains the roles of server components.
  - Addresses specific questions related to servers, domain names, DNS records, web server, application server, database, and communication protocols.

- **Issues with the Infrastructure:**
  - Single Point of Failure (SPOF)
  - Downtime during maintenance
  - Limited scalability

#### URLs
- GitHub Repository: [alx-system_engineering-devops]
- Directory: `0x09-web_infrastructure_design`
- File: `0-simple_web_stack`

### Task 1: Distributed Web Infrastructure
This task expands the infrastructure to a three-server setup, including a load balancer. The goal is to address issues like SPOF and improve scalability.

#### Key Points
- **Additional Components:**
  - 2 servers
  - 1 HAproxy load balancer
  - Explains reasons for each added element.

- **Infrastructure Details:**
  - Discusses load balancing algorithms, Active-Active vs. Active-Passive setup, and Primary-Replica cluster for the database.
  
- **Issues with the Infrastructure:**
  - Identifies SPOFs, security concerns, and lack of monitoring.

#### URLs
- GitHub Repository: [alx-system_engineering-devops]
- Directory: `0x09-web_infrastructure_design`
- File: `1-distributed_web_infrastructure`

### Task 2: Secured and Monitored Web Infrastructure
This task enhances security by adding firewalls, SSL certificates for encrypted traffic, and monitoring tools.

#### Key Points
- **Additional Components:**
  - 3 firewalls
  - 1 SSL certificate
  - 3 monitoring clients
  - Discusses the purpose of each added element.

- **Infrastructure Details:**
  - Explains the role of firewalls, the significance of HTTPS, and the purpose of monitoring.

- **Issues with the Infrastructure:**
  - Highlights challenges related to SSL termination, single MySQL server, and uniform server components.

#### URLs
- GitHub Repository: [alx-system_engineering-devops]
- Directory: `0x09-web_infrastructure_design`
- File: `2-secured_and_monitored_web_infrastructure`

### Task 3: Scale Up
This advanced task introduces a scalable architecture by splitting components and configuring load balancers in a cluster.

#### Key Points
- **Additional Components:**
  - 1 server
  - HAproxy load balancer configured as a cluster
  - Splits components into their own servers.

- **Infrastructure Details:**
  - Discusses the rationale behind each added element.

#### URLs
- GitHub Repository: [alx-system_engineering-devops]
- Directory: `0x09-web_infrastructure_design`
- File: `3-scale_up`

## Usage
Provide instructions on how to deploy and use each web infrastructure.

## License
This project is licensed under the [MIT License].

