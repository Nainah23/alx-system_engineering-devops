### Project: Tasks

#### Description
This project involves solving specific tasks related to system engineering and DevOps practices. Each task addresses a different aspect of system configuration, debugging, or security enhancement.

---

### Task 0: Run software as another user
**Objective:** Create a Bash script that allows running commands as a specified user.

The user root has extensive privileges on Linux, but it's risky to perform all tasks as root. This script enables running commands as a different privileged user, enhancing security.

- **Usage:**
  ```bash
  ./0-iamsomeoneelse [USERNAME]
  ```
  Replace `[USERNAME]` with the desired user.

- **Example:**
  ```bash
  ./0-iamsomeoneelse www-data
  ```

---

### Task 1: Run Nginx as Nginx
**Objective:** Configure Nginx to run as the nginx user for improved security.

Running Nginx as the root user can pose security risks. This script reconfigures Nginx to run as the nginx user with restricted permissions.

- **Requirements:**
  - Nginx must run as the nginx user
  - Nginx must listen on all active IPs on port 8080

- **Usage:**
  Execute the Bash script to configure Nginx:
  ```bash
  ./1-run_nginx_as_nginx
  ```

---

### Task 2: 7 lines or less
**Objective:** Optimize the Bash script from Task 1 to be concise yet effective.

Simplify the script from Task 1 to meet the challenge of achieving the desired configuration in 7 lines or less.

- **Requirements:**
  - Bash script must be 7 lines or less
  - New line at the end of the file
  - Adherence to Bash script requirements

- **Usage:**
  Execute the optimized Bash script:
  ```bash
  ./100-fix_in_7_lines_or_less
  ```

---

#### Repository Information
- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory:** 0x12-web_stack_debugging_2
- **Files:** 0-iamsomeoneelse, 1-run_nginx_as_nginx, 100-fix_in_7_lines_or_less
