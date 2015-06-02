FROM rhel7-latest
MAINTAINER Michael Heldebrant mheldebr@redhat.com

# Install upstream mongodb repo
ADD mongodb.repo /etc/yum.repos.d/
# Install mongodb server and modify config file to not fork
RUN yum --enablerepo=mongodb-org-3.0 -y install  mongodb-org-shell && yum clean all
