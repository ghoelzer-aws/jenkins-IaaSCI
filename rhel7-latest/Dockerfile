FROM rhel7-base
MAINTAINER Greg Hoelzer ghoelzer@redhat.com

# Execute system update
RUN yum --disablerepo=rhel-7-server-htb-rpms -y update && yum clean all
