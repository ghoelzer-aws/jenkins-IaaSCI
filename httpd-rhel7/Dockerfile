FROM rhel7-latest
MAINTAINER Michael Heldebrant mheldebr@redhat.com

# Install packages necessary to run EAP
RUN yum --enablerepo rhel-7-server-optional-rpms -y install httpd && yum clean all

# Set up apache to run
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
