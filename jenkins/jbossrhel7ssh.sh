#Start JBoss RHEL7 Docker Container Build Slave
# Redirect SSH Port to 3322
# Default Password
#
sudo docker run -d -p 0.0.0.0:3322:22 -e ROOT_PASS="mypass" jbossrhel7bld
