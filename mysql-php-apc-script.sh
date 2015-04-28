#!/bin/bash
# From here: http://www.codingsteps.com/install-apache-php-apc-mysql-on-amazon-ec2-with-amazon-linux-ami/
###############################################
# To use: 
# wget https://raw.github.com/saxenap/install-php-apc-mysql-amazon-linux-centos/master/php-apc-mysql-script.sh
# chmod 777 php-apc-mysql-script.sh
# ./php-apc-mysql-script.sh
###############################################
echo "*****************************************"
echo " 1. Prerequisites: Install updates, set time zones, install GCC and make"
echo "*****************************************"
sudo yum -y update
sudo ln -sf /usr/share/zoneinfo/America/Indianapolis /etc/localtime
sudo yum -y install gcc gcc-c++ make 
echo "*****************************************"
echo " 2. Install PHP and PHP Extensions"
echo "*****************************************"
sudo yum install -y php
sudo yum install -y php-devel php-mysql php-pdo
sudo yum install -y php-pear php-mbstring php-mcrypt
sudo pear install Log
sudo yum -y install pcre-devel
echo "*****************************************"
echo " 3. Install Apache httpd"
echo "*****************************************"
sudo yum -y install httpd
sudo service httpd start
echo "*****************************************"
echo " 4. Install MySQL"
echo "*****************************************"
sudo yum -y install mysql-server mysql
sudo service mysqld start
echo "*****************************************"
echo " 5. Install PHP-APC Module"
echo "*****************************************"
sudo yum install -y php-pecl-apc
echo "*****************************************"
echo " 6. PHP Configuration Changes in php.ini"
echo "*****************************************"
echo " Edit php.ini as follows:"
echo " 1: date.timezone = America/Indianapolis"
echo " 2: error_reporting = E_ALL | E_STRICT"
echo "*****************************************"
sudo sed -i 's/;date.timezone =/date.timezone = America\/Indianapolis/' /etc/php.ini
sudo sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED/error_reporting = E_ALL | E_STRICT/' /etc/php.ini
echo "*****************************************"
echo " 7. Auto-Enable httpd-Server"
echo "*****************************************"
sudo /sbin/chkconfig --levels 235 httpd on
echo "*****************************************"
echo " 8. Restart Apache Server"
echo "*****************************************"
sudo service httpd restart
echo "*****************************************"
echo " Installation Complete!"
echo "*****************************************"
echo " Following changes have been made in redis.config:"
echo " 1: date.timezone = America/Indianapolis"
echo " 2: error_reporting = E_ALL | E_STRICT"
echo "*****************************************"
read -p "Press [Enter] to continue..."
