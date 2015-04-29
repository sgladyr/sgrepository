
#ENV
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile

export PYTHONPATH=
export JAVAPATH=

# EPEL
cd /tmp
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
yum update -y

# NTP
yum install ntp
chkconfig --level 2345 ntpd on
/etc/init.d/ntpd start

# SOFT
yum groupinstall -y "Development tools" "Development Libraries" "Administration Tools" "System Tools"

# Webmin
cd /tmp/
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.740-1.noarch.rpm
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty
rpm -U webmin-1.740-1.noarch.rpm


# JAVA
yum install -y java
export JAVAPATH=

