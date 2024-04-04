# Project: SSH Tasks

This repository contains Bash scripts and configuration files to accomplish various SSH-related tasks.

## Task 0: Use a private key

**Description:**
This script connects to a server using SSH with a private key.

**Requirements:**
- Connect to the server using the private key `~/.ssh/school` with the user `ubuntu`.
- Use only single-character flags for SSH.
- Do not use the `-l` flag.
- No handling required for a private key protected by a passphrase.

**Usage:**
```bash
./0-use_a_private_key
```

## Task 1: Create an SSH key pair

**Description:**
This script generates an RSA key pair.

**Requirements:**
- Create a private key named `school` with 4096 bits and protected by the passphrase `betty`.

**Usage:.**
```bash
./1-create_ssh_key_pair
```

## Task 2: Client configuration file

**Description:**
Configure the local SSH client to connect to a server without typing a password.

**Requirements:**
- Configure the SSH client to use the private key `~/.ssh/school`.
- Configure the SSH client to refuse authentication using a password.

## Task 3: Let me in!

**Description:**
Add the provided SSH public key to the server's `ubuntu` user for remote access.

**Public Key:**
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN
```

## Task 4: Client configuration file (w/ Puppet)

**Description:**
Use Puppet to configure the SSH client to connect to the server without a password.

**Requirements:**
- Configure the SSH client to use the private key `~/.ssh/school`.
- Configure the SSH client to refuse authentication using a password.
