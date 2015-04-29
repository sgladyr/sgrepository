
Mysql 5.6.10
http://mervine.net/hacks/installing-mysql-on-centos6
wget -O 1.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-shared-5.6.10-1.el6.x86_64.rpm/from/http://cdn.mysql.com/
wget -O 2.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-client-5.6.10-1.el6.x86_64.rpm/from/http://cdn.mysql.com/
wget -O 3.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-server-5.6.10-1.el6.x86_64.rpm/from/http://cdn.mysql.com/
wget -O 4.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-devel-5.6.10-1.el6.i686.rpm/from/http://cdn.mysql.com/

yum install -y *.rpm
