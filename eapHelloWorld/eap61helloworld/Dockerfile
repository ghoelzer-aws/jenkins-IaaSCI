# Use EAP 6.1.1/RHE6 Base Image for Hello World Build/Test/Delployment
FROM jbosseap611/6

# Add Project Repo into /opt/jboss
# Updated App to version 1.01

ADD eaphelloworld-xpaas /opt/jboss/eaphelloworld-xpaas

# Run Maven Build/Test
USER root
RUN cd /opt/jboss/eaphelloworld-xpaas && pwd && ls -la && mvn package

# Copy WAR file to EAP Deployment Directory
RUN cp /opt/jboss/eaphelloworld-xpaas/target/eaphelloworldv100-1.01.war /opt/jboss/eap-6.1/standalone/deployments/

