#!/bin/bash

# Start/Stop JBoss RHEL6 Docker Container Build Slave
# Redirect SSH Port to 2222
# Default Password
#
if [ $2 = "start" ]; then
   echo "Starting Jenkins build slave " 
   sudo docker run --rm -d -p 0.0.0.0:2222:22 -e ROOT_PASS="mypass" --name=$1 jbossrhel6bld
fi

if [ $2 = "stop" ]; then
   echo "Stopping Jenkins build slave "
   sudo docker stop $1
fi
