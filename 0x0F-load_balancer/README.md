
ad Balancer Configuration

This repository contains scripts and configuration files for setting up and configuring a load balancer and multiple web servers for a project in the ALX School's system engineering and DevOps curriculum.

## Tasks Overview

### Task 0: Double the number of webservers

In this task, the goal is to configure `web-02` to be identical to `web-01` by automating the setup process using a Bash script. Additionally, we need to configure Nginx on both `web-01` and `web-02` to include a custom HTTP response header (`X-Served-By`) that contains the hostname of the server. The script `0-custom_http_response_header` is provided to accomplish this setup.

### Task 1: Install your load balancer

For this task, the objective is to install and configure HAProxy on the `lb-01` server. HAProxy should be configured to distribute traffic using a round-robin algorithm to both `web-01` and `web-02`. It should also be manageable via an init script. The script `1-install_load_balancer` is provided to automate the setup process on a new Ubuntu machine.

### Task 2: Add a custom HTTP header with Puppet

In this advanced task, the objective is to automate the configuration of a custom HTTP header response using Puppet. Similar to Task 0, the custom header (`X-Served-By`) should contain the hostname of the Nginx server. The Puppet manifest file `2-puppet_custom_http_response_header.pp` is provided to achieve this configuration on a new Ubuntu machine.

## Repository Structure

- `0x0F-load_balancer/`: Main directory containing scripts and configuration files for the load balancer project.
  - `0-custom_http_response_header`: Bash script to configure web servers and add custom HTTP response header.
  - `1-install_load_balancer`: Bash script to install and configure HAProxy on the load balancer server.
  - `2-puppet_custom_http_response_header.pp`: Puppet manifest file for adding a custom HTTP header.

## Usage

1. Clone the repository to your local machine:

    ```
    git clone https://github.com/alx-system_engineering-devops/0x0F-load_balancer.git
    ```

2. Navigate to the appropriate task directory (`0x0F-load_balancer`) and run the provided scripts or configuration files as needed.

3. Follow any additional instructions provided in the README files within each task directory for further setup and configuration details.

## Contributors

- This project was completed as part of the ALX School system engineering and DevOps curriculum.
- Contributors: [Your Name]

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the LICENSE file for details.
