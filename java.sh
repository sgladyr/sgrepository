#!/usr/local/bin/bash
INSTALL
ENV

echo $JAVA_HOME
java -version
updatedb; locate java | grep bin # (mlocate)
type -a java
Trobleshooting

echo "DIR ~/src/test created"
