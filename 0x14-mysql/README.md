---

# MySQL Tasks README

## Overview

This repository contains scripts and configurations for setting up and managing MySQL databases on servers web-01 and web-02.

## Installation

To install MySQL on both servers, ensure you're using MySQL distribution 5.7.x. You can verify the installation with the following command:

```bash
ubuntu@229-web-01:~$ mysql --version
mysql  Ver 14.14 Distrib 5.7.25, for Linux (x86_64) using  EditLine wrapper
ubuntu@229-web-01:~$
```

## Task 1: Let us in!

Create a MySQL user named holberton_user on both web-01 and web-02 with the host name set to localhost and the password `projectcorrection280hbtn`. Grant necessary permissions for checking primary/replica status.

Example:

```bash
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"
Enter password:
+-----------------------------------------------------------------+
| Grants for holberton_user@localhost                             |
+-----------------------------------------------------------------+
| GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost' |
+-----------------------------------------------------------------+
ubuntu@229-web-01:~$
```

## Task 2: If only you could see what I've seen with your eyes

Create a database named tyrell_corp on web-01 with a table named nexus6. Ensure holberton_user has SELECT permissions on the table.

Example:

```bash
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e "use tyrell_corp; select * from nexus6"
Enter password:
+----+-------+
| id | name  |
+----+-------+
|  1 | Leon  |
+----+-------+
ubuntu@229-web-01:~$
```

## Task 3: Quite an experience to live in fear, isn't it?

Create a new user replica_user on web-01 with appropriate permissions for replication. Ensure holberton_user has SELECT privileges on the mysql.user table.

Example:

```bash
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e 'SELECT user, Repl_slave_priv FROM mysql.user'
+------------------+-----------------+
| user             | Repl_slave_priv |
+------------------+-----------------+
| root             | Y               |
| mysql.session    | N               |
| mysql.sys        | N               |
| debian-sys-maint | Y               |
| holberton_user   | N               |
| replica_user     | Y               |
+------------------+-----------------+
ubuntu@229-web-01:~$
```

## Task 4: Setup a Primary-Replica infrastructure using MySQL

Set up MySQL primary on web-01 and MySQL replica on web-02. Configure replication for the tyrell_corp database. Provide configuration files for both primary and replica as `4-mysql_configuration_primary` and `4-mysql_configuration_replica` respectively.

Example:

Check replication status:

- On web-01: `mysql -uholberton_user -p`, then `show master status;`
- On web-02: `mysql -uholberton_user -p`, then `show slave status\G;`

## Task 5: MySQL backup

Create a Bash script that generates a MySQL dump, names it `backup.sql`, compresses it into a tar.gz archive with the format `day-month-year.tar.gz`.

Example usage:

```bash
ubuntu@03-web-01:~$ ls
5-mysql_backup
ubuntu@03-web-01:~$ ./5-mysql_backup mydummypassword
backup.sql
ubuntu@03-web-01:~$ ls
01-03-2017.tar.gz  5-mysql_backup  backup.sql
ubuntu@03-web-01:~$ more backup.sql
...
ubuntu@03-web-01:~$ file 01-03-2017.tar.gz
01-03-2017.tar.gz: gzip compressed data, from Unix, last modified: Wed Mar  1 23:38:09 2017
ubuntu@03-web-01:~$
```

## Repository Information

- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x14-mysql

---
