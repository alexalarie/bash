# Install Mariadb on Ubuntu 18.04 / Debian 9
##########################################################################
$ sudo apt update
$ sudo apt install mariadb-server mariadb-client
$ sudo mysql_secure_installation

$ sudo mysql -u root # Use "sudo" since is new installation

mysql> USE mysql;
mysql> UPDATE user SET plugin='mysql_native_password' WHERE User='root';
mysql> FLUSH PRIVILEGES;
mysql> exit;

$ service mysql restart
##########################################################################
# Create a new user and grant all privileges
CREATE USER 'OVN_admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'OVN_admin'@'localhost';
