# Use latest jbossrhel7 image as the base
FROM jbossrhel6:latest

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/jre-1.7.0

USER jboss

# Add the EAP distribution to /opt/jboss
# Make sure the distribution is copied to directory where Dockerfile is located
COPY jboss-eap-6.1.1.zip /opt/jboss/jboss-eap-6.1.1.zip
WORKDIR /opt/jboss
RUN unzip jboss-eap-6.1.1.zip && rm jboss-eap-6.1.1.zip

# Set the JBOSS_HOME env variable
ENV JBOSS_HOME /opt/jboss/jboss-eap-6.1

# Expose the ports we're interested in
EXPOSE 8080 9990

# Set the default command to run on boot
# This will boot EAP  in the standalone mode and bind to all interface
CMD ["/opt/jboss/jboss-eap-6.1/bin/standalone.sh", "-b", "0.0.0.0"]
