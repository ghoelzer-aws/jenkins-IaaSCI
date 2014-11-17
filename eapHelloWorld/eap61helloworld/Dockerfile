# Use EAP 6.1.1/RHEL7 Base Image for Hello World Build/Test/Delployment
FROM jbosseap611/7

# Add Project Repo into /opt/jboss
# Updated App to version 1.02

USER root

ADD eaphelloworld-xpaas /opt/jboss/eaphelloworld-xpaas

# Run Maven Build/Test
RUN cd /opt/jboss/eaphelloworld-xpaas && pwd && ls -la && mvn package

# Copy WAR file to EAP Deployment Directory
USER jboss
RUN cp /opt/jboss/eaphelloworld-xpaas/target/eaphelloworldv100-1.02.war /opt/jboss/eap-6.1/standalone/deployments/

