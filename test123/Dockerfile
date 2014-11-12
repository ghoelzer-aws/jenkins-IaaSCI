# test123 Jenkins for Docker image  
#  
# Version    1  

# Pull from rhel6 RPM Build Image  
FROM rhel6-base  

MAINTAINER Greg Hoelzer ghoelzer@redhat.com  

# Update the image (using an employee subscription)  
RUN subscription-manager register --username=ghoelzer@redhat.com --password='Water!23' --auto-attach  
RUN subscription-manager repos --disable=*  
RUN subscription-manager repos --enable rhel-6-server-rpms  
RUN yum update -y  
RUN subscription-manager unregister  
# Output  

#ENTRYPOINT tail /var/log/yum.log

