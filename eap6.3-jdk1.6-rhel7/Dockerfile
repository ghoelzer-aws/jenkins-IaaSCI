# Use latest jbossrhel7 image as the base
FROM jdk1.6-rhel7

USER jboss

# Add the EAP distribution to /opt/jboss
# Make sure the distribution is copied to directory where Dockerfile is located
ADD jboss-eap-6.3.0.tar.xz /opt/jboss

# Set the JBOSS_HOME env variable
ENV JBOSS_HOME /opt/jboss/jboss-eap-6.3

# Expose the ports we're interested in
EXPOSE 8080 9990

# Set the default command to run on boot
# This will boot EAP  in the standalone mode and bind to all interface
CMD ["/opt/jboss/jboss-eap-6.3/bin/standalone.sh", "-b", "0.0.0.0"]
