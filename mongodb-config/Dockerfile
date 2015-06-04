FROM mongodb-rhel7
MAINTAINER Michael Heldebrant mheldebr@redhat.com

# Install upstream mongodb repo
ENTRYPOINT ["/usr/bin/mongod","-f","/etc/mongod.conf","--configsvr"]
