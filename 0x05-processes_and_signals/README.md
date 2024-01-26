### 0. What is my PID

#### Requirements:
- Write a Bash script that displays its own PID.

#### Usage:
```bash
sylvain@ubuntu$ ./0-what-is-my-pid
4120
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops](https://github.com/Nainah23/alx-system_engineering-devops)
- Directory: 0x05-processes_and_signals
- File: 0-what-is-my-pid

### 1. List your processes

#### Requirements:
- Write a Bash script that displays a list of currently running processes.
- Must show all processes, for all users, including those which might not have a TTY.
- Display in a user-oriented format.
- Show process hierarchy.

#### Usage:
```bash
sylvain@ubuntu$ ./1-list_your_processes | head -50
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         2  0.0  0.0      0     0 ?        S    Feb13   0:00 [kthreadd]
...
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]https://github.com/Nainah23/alx-system_engineering-devops
- Directory: 0x05-processes_and_signals
- File: 1-list_your_processes

### 2. Show your Bash PID

#### Requirements:
- Write a Bash script that displays lines containing the bash word, allowing you to easily get the PID of your Bash process.
- You cannot use pgrep.

#### Usage:
```bash
sylvain@ubuntu$ ./2-show_your_bash_pid
sylvain   4404  0.0  0.7  21432  4000 pts/0    Ss   03:32   0:00          \_ -bash
...
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]https://github.com/Nainah23/alx-system_engineering-devops
- Directory: 0x05-processes_and_signals
- File: 2-show_your_bash_pid

### 3. Show your Bash PID made easy

#### Requirements:
- Write a Bash script that displays the PID and process name of processes whose name contains the word bash.
- You cannot use ps.

#### Usage:
```bash
sylvain@ubuntu$ ./3-show_your_bash_pid_made_easy
4404 bash
4555 bash
...
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 3-show_your_bash_pid_made_easy

### 4. To infinity and beyond

#### Requirements:
- Write a Bash script that displays "To infinity and beyond" indefinitely.
- In between each iteration of the loop, add a sleep 2.

#### Usage:
```bash
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
...
^C
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 4-to_infinity_and_beyond

### 5. Don't stop me now!

#### Requirements:
- Write a Bash script that stops the process created in task 4-to_infinity_and_beyond.
- You must use kill.

#### Usage:
```bash
# Terminal #0
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
...
^C
sylvain@ubuntu$

# Terminal #1
sylvain@ubuntu$ ./5-dont_stop_me_now 
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 5-dont_stop_me_now

### 6. Stop me if you can

#### Requirements:
- Write a Bash script that stops the process created in task 4-to_infinity_and_beyond.
- You cannot use kill or killall.

#### Usage:
```bash
# Terminal #0
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
...
^C
sylvain@ubuntu$

# Terminal #1
sylvain@ubuntu$ ./6-stop_me_if_you_can
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 6-stop_me_if_you_can

### 7. Highlander

#### Requirements:
- Write a Bash script that displays "To infinity and beyond" indefinitely.
- Displays "I am invincible!!!" when receiving a SIGTERM signal.
- Another script should kill the process created in task 4-to_infinity_and_beyond.

#### Usage:
```bash
# Terminal #0
sylvain@ubuntu$ ./7-highlander
To infinity and beyond
To infinity and beyond
I am invincible!!!
...
^C
sylvain@ubuntu$

# Terminal #1
sylvain@ubuntu$ ./67-stop_me_if_you_can 
sylvain@ubuntu$ ./67-stop_me_if_you_can
...
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 7-highlander

### 8. Beheaded process

#### Requirements:
- Write a Bash script that kills the process created in task 7-highlander.

#### Usage:
```bash
# Terminal #0
sylvain@ubuntu$ ./7-highlander 
To infinity and beyond
To infinity and beyond
...
Killed
sylvain@ubuntu$

# Terminal #1
sylvain@ubuntu$ ./8-beheaded_process
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 8-beheaded_process

### 9. Process and PID file

#### Requirements:
- Write a Bash script that creates the file /var/run/myscript.pid containing its PID.
- Displays "To infinity and beyond" indefinitely.
- Displays "I hate the kill command" when receiving a SIGTERM signal.
- Displays "Y U

 no love me?!" when receiving a SIGINT signal.
- Deletes the file /var/run/myscript.pid and terminates itself when receiving a SIGQUIT signal.

#### Usage:
```bash
sylvain@ubuntu$ ./9-process_and_pid_file
To infinity and beyond
To infinity and beyond
...
^C
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 9-process_and_pid_file

### 10. Manage my process

#### Requirements:
- Write a Bash script that manages the file /var/run/manage_my_process.
- Displays "To infinity and beyond" indefinitely.
- Displays "I hate the kill command" when receiving a SIGTERM signal.
- Displays "Y U no love me?!" when receiving a SIGINT signal.
- Deletes the file /var/run/manage_my_process and terminates itself when receiving a SIGQUIT signal.
- Writes "Let me sleep for 1 second" every second, for 5 seconds.
- Writes "I'm running" every 2 seconds, for 5 seconds.

#### Usage:
```bash
sylvain@ubuntu$ ./10-manage_my_process | cat -e
To infinity and beyond$
I'm running$
I'm running$
Let me sleep for 1 second$
I'm running$
Let me sleep for 1 second$
I'm running$
I'm running$
Let me sleep for 1 second$
I'm running$
Let me sleep for 1 second$
I'm running$
^C
sylvain@ubuntu$
```

#### Repo:
- GitHub repository: [alx-system_engineering-devops]
- Directory: 0x05-processes_and_signals
- File: 10-manage_my_process
