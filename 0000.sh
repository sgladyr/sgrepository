
#ENV
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile

export PYTHONPATH=
export JAVAPATH=

# EPEL
cd /tmp
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
yum update -y

# Perform full system update
sudo yum clean all
sudo yum repolist
sudo yum update
sudo reboot

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
# http://stackoverflow.com/questions/10268583/how-to-automate-download-and-installation-of-java-jdk-on-linux
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz
mkdir /usr/java
cd /usr/java/
tar -C /usr/java -xvf /tmp/jdk-8u45-linux-x64.tar.gz
ln -s jdk1.8.0_45 latest
ln -s latest default
ln -s /usr/java/default/bin/java /usr/bin/java
echo 'export JDK_HOME="/usr/java/default"' >> /etc/profile
echo 'export JAVA_HOME="/usr/java/default"' >> /etc/profile
echo 'export JRE_HOME="/usr/java/default/jre"' >> /etc/profile
echo 'PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile
source /etc/profile
#test java
java -version

