FROM rhel7-latest
MAINTAINER Michael Heldebrant mheldebr@redhat.com

# Install packages necessary to run EAP
RUN yum --enablerepo=rhel-server-rhscl-7-rpms info nginx14 && yum clean all

#Config nginx to stay in the foreground
RUN  echo "\ndaemon off;" >> /opt/rh/nginx14/root/etc/nginx/nginx.conf

# Set up nginx to run
ENTRYPOINT ["/opt/rh/nginx14/root/usr/sbin/nginx"]
