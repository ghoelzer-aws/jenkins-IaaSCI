FROM rhel7-base
MAINTAINER Greg Hoelzer ghoelzer@redhat.com

# Execute system update
RUN yum -y --disablerepo rhel-7-server-rt-rpms install yum-utils && yum clean all && yum-config-manager --disable rhel-7-server-rt-rpms 
RUN yum -y update && yum clean all
