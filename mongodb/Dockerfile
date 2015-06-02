FROM rhel7-latest
MAINTAINER Michael Heldebrant mheldebr@redhat.com

# Install upstream mongodb repo
ADD mongodb.repo /etc/yum.repos.d/
# Install mongodb server and modify config file to not fork
RUN yum --enablerepo=mongodb-org-3.0 -y install  mongodb-org-server && yum clean all
RUN sed -i -e 's/fork=true/# fork\=true/' -e 's/bind_ip=127.0.0.1/# bind_ip=127.0.0.1/' /etc/mongod.conf
EXPOSE 27017
# Set up mongod to run on startup
USER mongod
ENTRYPOINT ["/usr/bin/mongod","-f","/etc/mongod.conf"]
