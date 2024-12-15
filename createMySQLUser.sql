-- Create user from user account
SELECT host, user FROM mysql.user WHERE user = 'usernamehere';
CREATE USER 'usernamehere'@'localhost' IDENTIFIED BY 'paswordhere';
GRANT ALL PRIVILEGES ON *.* TO 'usernamehere'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
