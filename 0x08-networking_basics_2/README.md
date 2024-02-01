# 0x08 Networking Basics 2

## 0-change_your_home_IP

### Task Description:
Change your home IP

### Requirements:
Write a Bash script that configures an Ubuntu server with the below requirements:

- localhost resolves to 127.0.0.2
- facebook.com resolves to 8.8.8.8.

### Example:
```bash
sylvain@ubuntu$ ping localhost
# Output:
# PING localhost (127.0.0.1) 56(84) bytes of data.
# 64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.012 ms
# ...
sylvain@ubuntu$ sudo ./0-change_your_home_IP
sylvain@ubuntu$ ping localhost
# Output:
# PING localhost (127.0.0.2) 56(84) bytes of data.
# 64 bytes from localhost (127.0.0.2): icmp_seq=1 ttl=64 time=0.012 ms
# ...

sylvain@ubuntu$ ping facebook.com
# Output:
# PING facebook.com (8.8.8.8) 56(84) bytes of data.
# 64 bytes from facebook.com (8.8.8.8): icmp_seq=1 ttl=63 time=8.06 ms
# ...
```

### Note:
- If you're running this script on a machine that you'll continue to use, be sure to revert localhost to 127.0.0.1 after usage.

### Repo Information:
- GitHub repository: alx-system_engineering-devops
- Directory: 0x08-networking_basics_2
- File: 0-change_your_home_IP

---

## 1-show_attached_IPs

### Task Description:
Show attached IPs

### Requirements:
Write a Bash script that displays all active IPv4 IPs on the machine it’s executed on.

### Example:
```bash
sylvain@ubuntu$ ./1-show_attached_IPs | cat -e
# Output:
# 10.0.2.15$
# 127.0.0.1$
```

### Note:
- The displayed IPs may vary depending on the machine.

### Repo Information:
- GitHub repository: alx-system_engineering-devops
- Directory: 0x08-networking_basics_2
- File: 1-show_attached_IPs

---

## 100-port_listening_on_localhost

### Task Description:
Port listening on localhost (Advanced)

### Requirements:
Write a Bash script that listens on port 98 on localhost.

### Example:
*Terminal 0:*
```bash
sylvain@ubuntu$ sudo ./100-port_listening_on_localhost
```

*Terminal 1:*
```bash
sylvain@ubuntu$ telnet localhost 98
# Output:
# Trying 127.0.0.2...
# Connected to localhost.
# Escape character is '^]'.
# Hello world
# test
```

*Terminal 0 (Receiving the text):*
```bash
sylvain@ubuntu$ sudo ./100-port_listening_on_localhost
# Output:
# Hello world
# test
```

### Note:
- This script can be used for debugging socket connection issues or testing connections within localhost or across networks.

### Repo Information:
- GitHub repository: alx-system_engineering-devops
- Directory: 0x08-networking_basics_2
- File: 100-port_listening_on_localhost
