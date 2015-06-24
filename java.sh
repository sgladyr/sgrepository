#!/usr/local/bin/bash
# INSTALL


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
