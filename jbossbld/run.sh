#!/bin/bash
if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.33.x86_64/jre
exec /usr/sbin/sshd -D
