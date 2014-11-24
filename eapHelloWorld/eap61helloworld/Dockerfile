# Use EAP 6.1.1/RHE6 Base Image for Hello World Build/Test/Delployment
FROM jbosseap611/6

USER root

# Copy WAR file to EAP Deployment Directory
ADD target/*.war /opt/jboss/eap-6.1/standalone/deployments/

USER jboss

