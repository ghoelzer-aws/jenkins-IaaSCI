# Testing new MicroDNF Image Capabilities
FROM registry.access.redhat.com/rhel7-atomic
MAINTAINER Greg Hoelzer ghoelzer@redhat.com
RUN microdnf --enablerepo=rhel-7-server-rpms \
install java-1.8.0-openjdk-headless --nodocs ;\
microdnf clean all
