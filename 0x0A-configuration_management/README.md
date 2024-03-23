# Configuration Management with Puppet

This repository contains Puppet manifests to automate various tasks.

## Task 0: Create a File

- **Objective:** Create a file in `/tmp`.
- **Requirements:**
  - File path: `/tmp/school`
  - File permission: 0744
  - File owner: www-data
  - File group: www-data
  - File content: "I love Puppet"

## Task 1: Install a Package

- **Objective:** Install Flask from pip3.
- **Requirements:**
  - Install Flask
  - Version: 2.1.0

## Task 2: Execute a Command

- **Objective:** Create a manifest to kill a process named `killmenow`.
- **Requirements:**
  - Use the `exec` Puppet resource
  - Use `pkill` to terminate the process

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/alx-system_engineering-devops)
- **Directory:** `0x0A-configuration_management`
- **Files:**
  - `0-create_a_file.pp`
  - `1-install_a_package.pp`
  - `2-execute_a_command.pp`

Feel free to explore the repository for the Puppet manifests to accomplish these tasks.

