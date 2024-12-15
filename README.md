# MySQL & MySQL Workbench
Author: Troy Washington
## MySQL Installation Process: 
Current verison of MySQL Workbench (8.0.40) is incompatible with newer version of MySQL (9.1.0). **⚠️** Warning **⚠️** about this issue is alerted whith initial start up of MySQL Workbench. 

Steps to fix: 
### (Mac OS)
1. Install matching version of MySQL using homebrew ```brew install mysql@8.0```.
2. Install matching mysql client in order to ensure that correct packaged version of tools are installed ```brew install mysql-client@8.0```.
3. Install the newer version of MySQL(9.1.0) server from mysql website (newer version is needed for utilizing mysql terminal commands. https://dev.mysql.com/downloads/mysql/
4. Check status of server using ```mysql --version```, ```brew services list```, ```brew services restart mysql```

## Securing MySQL Root Server connection: 
Manage secure connections with restrictions on who is given remote access to root server. Also set password and password security levels
```mysql_secure_connection```,
and then connect to root server 
```mysql -u root```.
