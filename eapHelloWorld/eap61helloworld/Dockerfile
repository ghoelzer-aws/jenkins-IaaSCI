# Use EAP 6.1.1/RHE6 Base Image for Hello World Build/Test/Delployment
FROM jbosseap611/6

# Clone Project Repo into /opt/jboss
# Updated App to version 1.00
#RUN git clone https://github.com/ghoelzer-rht/eaphelloworld-xpaas.git

ADD eaphelloworld-xpaas /opt/jboss/

# Run Maven Build/Test
RUN cd /opt/jboss/eaphelloworld-xpaas && pwd && ls -la && mvn package

# Copy WAR file to EAP Deployment Directory
RUN cp /opt/jboss/eaphelloworld-xpaas/target/eaphelloworldv100-1.00.war /opt/jboss/eap-6.1/standalone/deployments/

