yum install mysql-server
/sbin/service mysqld start

/usr/bin/mysql_secure_installation

-I INPUT -p tcp --dport 3306 -m state --state NEW,ESTABLISHED -j ACCEPT
-I OUTPUT -p tcp --sport 3306 -m state --state ESTABLISHED -j ACCEPT

yum install mysql-devel mysql-server gcc make
/etc/init.d/mysqld start
/usr/bin/mysql_secure_installation
chkconfig --add mysqld
chkconfig --level 345 mysqld on
service mysqld start

/usr/bin/mysqladmin -u root password 'new-password'
/usr/bin/mysqladmin -u root --password='new-password' -h hostname-of-your-server 'new-password'

