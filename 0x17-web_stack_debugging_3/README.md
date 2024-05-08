---

# Web Stack Debugging and Automation with Puppet

## Overview

This project focuses on debugging a web server issue using `strace` and automating the fix using Puppet. The task involves investigating why Apache is returning a 500 error, resolving the issue manually with `strace`, and then automating the fix using Puppet by creating a Puppet manifest file (`0-strace_is_your_friend.pp`).

## Task Details

### Task 0: Strace Is Your Friend

- **Description:** Using `strace`, find out why Apache is returning a 500 error and fix it.
- **Hint:** Use `tmux` to run `strace` in one window and `curl` in another.
- **Requirements:**
  - Your `0-strace_is_your_friend.pp` file must contain Puppet code.
  - Use any Puppet resource type for the fix.

### Example

```bash
$ curl -sI 127.0.0.1
HTTP/1.0 500 Internal Server Error
Date: Fri, 24 Mar 2017 07:32:16 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Connection: close
Content-Type: text/html

$ puppet apply 0-strace_is_your_friend.pp
...
$ curl -sI 127.0.0.1:80
HTTP/1.1 200 OK
Date: Fri, 24 Mar 2017 07:11:52 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Link: <http://127.0.0.1/?rest_route=/>; rel="https://api.w.org/"
Content-Type: text/html; charset=UTF-8
```

## Repository Details

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory:** `0x17-web_stack_debugging_3`
- **File:** `0-strace_is_your_friend.pp`

## Instructions

1. Clone the repository to your local machine.
2. Navigate to the `0x17-web_stack_debugging_3` directory.
3. Use `strace` to debug the Apache 500 error manually.
4. Fix the issue manually.
5. Create a Puppet manifest file (`0-strace_is_your_friend.pp`) with the automated fix.
6. Apply the Puppet manifest using `puppet apply`.
7. Verify the fix by using `curl` to check the server response.
8. Commit and push your changes to GitHub.

## Resources

- [Puppet Documentation](https://puppet.com/docs/puppet/latest/puppet_index.html)
- [Strace Command Usage](https://linux.die.net/man/1/strace)
- [Tmux Cheat Sheet](https://tmuxcheatsheet.com/)

---
