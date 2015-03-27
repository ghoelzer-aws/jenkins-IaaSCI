# jenkins-IaaSCI
Experimenting with Jenkins and Continuous Integration for Infrastructure (readme updates in progress)

The example Docker Files are used as part of two base Jenkins Build Pipleines, based on RHEL6 and RHEL7 core OS/Infrastructure.  We have grouped the supporting Docker files in the rhel6 and rhel7 branches.  In our example, our use case is a complete OS/Platform/Application stack.  We have created the supporting Docker file/image geneology such that we can automate the testing of any change at any point in the stack via Jenkins, Docker File/Images Builds, and Linux containers for multiple versions of the stack.  The logical geneology of the Docker Images and Build pipeline are as follows

RHEL Base -\>

Here's our example flow for RHEL6/JDK1.6 Docker Files/Docker Image Builds:

rhel6-latest - Base Red Hat RHEL6 OS, with yum update

jdk1.6-rhel6 - Uses rhel6-lastest, installs jdk1.6 and some supporting utilities with yum

eap-jdk1.6-rhel6 - Uses jdk1.6-rhel6, installs EAP onto image from a .zip deployment copied into the docker file directory

helloworld-eap-jdk1.6-rhel6 - Uses eap-jdk1.6-rhel6, adds a "hello world" app to the EAP deployment directory, and is final Docker image to use for an application container.

 

You will see some other directories/docker files as we also have a jdk1.7 flow, and we also create some Jenkins Slave Docker Images/Containers with JDK 1.6 or 1.7 and Maven, to demo building the "Hello World" app using Docker and Jenkins.   Assuming you're using RHEL7 as your Docker host, your Docker Images created will pickup the host's subscribed entitlements, enabling you to seamlessly using yum as part of your image builds like in our examples.   My github repo also has a "rhel7" branch, with the same set of Docker files setup to support RHEL7.   You may already be aware of this, but you can run a Docker Container using a any RHEL base OS (eg. 5,.X 6.X, 7.X) on any RHEL Host OS that supports Docker.

