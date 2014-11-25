#!/bin/bash

# Start/Stop JBoss RHEL7 Docker Container Build Slave
# Redirect SSH Port to 3322
# Default Password
#
if [ $2 = "start" ]; then
   echo "Starting Jenkins build slave " 
   sudo docker rm $1
   sudo docker run -d -p 0.0.0.0:3322:22 -e ROOT_PASS="mypass" --name=$1 jbossrhel7bld
fi

if [ $2 = "stop" ]; then
   echo "Stopping Jenkins build slave "
   sudo docker stop $1
fi
