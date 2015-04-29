
Mysql 5.6.10
http://mervine.net/hacks/installing-mysql-on-centos6
http://tecadmin.net/install-mysql-5-7-centos-rhel/




cd /tmp
wget -O 1.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-shared-5.6.10-1.el6.x86_64.rpm/from/http://cdn.mysql.com/
wget -O 2.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-client-5.6.10-1.el6.x86_64.rpm/from/http://cdn.mysql.com/
wget -O 3.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-server-5.6.10-1.el6.x86_64.rpm/from/http://cdn.mysql.com/
wget -O 4.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-devel-5.6.10-1.el6.i686.rpm/from/http://cdn.mysql.com/
rpm -e --nodeps mysql-libs-5.1.71-1.el6.x86_64
yum install -y *.rpm



cat /root/.mysql_secret
mysql -u root -p
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('MyNewPass');
FLUSH PRIVILEGES;
quit

C:\Users\user\AppData\Roaming\MySQL\Workbench\ssh

/usr/bin/mysql_secure_installation
mysql -V
