FROM rhel7-latest
MAINTAINER Michael Heldebrant mheldebr@redhat.com

# Install packages necessary to run EAP
ADD mongodb.repo /etc/yum.repos.d/
RUN yum --enablerepo=mongodb-org-3.0 -y install  mongodb-org-server && yum clean all
RUN sed -i -e 's/fork=true/# fork\=true/' /etc/mongod.conf
EXPOSE 27017
# Set up nginx to run
USER mongod
ENTRYPOINT ["/usr/bin/mongod","-f","/etc/mongod.conf"]
