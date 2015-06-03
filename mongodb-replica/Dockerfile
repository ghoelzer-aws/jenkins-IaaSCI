FROM mongodb
MAINTAINER Michael Heldebrant mheldebr@redhat.com

ENV	replicaset rs0
# Install upstream mongodb repo
ENTRYPOINT /usr/bin/mongod -f /etc/mongod.conf --replSet $replicaset
