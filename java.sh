#!/usr/local/bin/bash

===================================================================================
# INSTALL for JIRA
sudo mkdir /usr/java
cd /usr/java
  
sudo wget http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-linux-x64.tar.gz
sudo tar -C /usr/java -xvf jdk-7u45-linux-x64.tar.gz
sudo ln -s jdk1.7.0_45/ lastest
sudo ln -s lastest default
  
echo 'export JDK_HOME="/usr/java/default"' >> /etc/profile
echo 'export JAVA_HOME="/usr/java/default"' >> /etc/profile
echo 'export JRE_HOME="/usr/java/default/jre"' >> /etc/profile
echo 'PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile
source /etc/profile
java -version
=====================================================================================

# ENV


$echo $JAVA_HOME
$java -version
$updatedb; locate java | grep bin # (mlocate)
$type -a java

# Trobleshooting

$echo "DIR ~/src/test created"


# Firefox

# Для 32 битной системы создаем символическую ссылку, вводим в терминале:
$sudo ln -s /usr/lib/jvm/jdk1.7.0/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins
# Для 64 битной системы создаем символическую ссылку, вводим в терминале:
$sudo ln -s /usr/lib/jvm/jdk1.7.0/jre/lib/i386/libnpjp2.so /usr/lib/mozilla/plugins 
