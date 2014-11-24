#Start JBoss RHEL6 Docker Container Build Slave
# Redirect SSH Port to 2222
# Default Password
#
sudo docker run -d -p 0.0.0.0:2222:22 -e ROOT_PASS="mypass" jbossrhel6bld
