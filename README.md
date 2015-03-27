# jenkins-IaaSCI
**Experimenting with Jenkins and Continuous Integration for Infrastructure**

The example Docker Files are used as part of two Jenkins Build Pipleines, based on RHEL6 and RHEL7 core OS/Infrastructure.  We have grouped the supporting Docker files in the **rhel6** and **rhel7 branches**.  In our example, our use case is a complete OS/Platform/Application stack.  We have created the supporting Docker file/image geneology such that we can automate the testing of any change at any point in the stack via Jenkins, Docker File/Images Builds, and Linux containers for multiple versions of the stack.  The logical geneology of the Docker Images and Build pipeline are as follows:

**RHEL Base -\> Java JDK -\> JBoss EAP -\> Web App -\> Final Docker Image/Container for Execution**

Additionally, we have created a similar logical geneology for Docker Images/Containers that can be used as Jenkins Build Slaves:

**RHEL Base -\> Java JDK -\> Maven + Utilities -\> Final Docker Image/Container for Jenkins Build Slave**

Here's the Docker File/Image Geneology for a RHEL6/JDK1.6 application stack from the rhel6 branch:

**[rhel6-latest](https://github.com/ghoelzer-rht/jenkins-IaaSCI/blob/rhel6/rhel6-latest/Dockerfile)** - Base Red Hat RHEL6 OS, with yum update

**--\>[jdk1.6-rhel6](https://github.com/ghoelzer-rht/jenkins-IaaSCI/blob/rhel6jdk1.6-rhel6/Dockerfile)** - Installs jdk1.6 and some supporting utilities with yum

**----\>eap-jdk1.6-rhel6** - Installs JBoss EAP onto image from a .zip deployment

**------\>helloworld-eap-jdk1.6-rhel6** - Adds a "hello world" app to the EAP deployment directory

Here's the Docker File/Image Geneology for a RHEL6/JDK1.6 Jenkins Slave stack from the rhel6 branch:

**rhel6-latest** - Base Red Hat RHEL6 OS, with yum update

**--\>jdk1.6-rhel6** - Installs jdk1.6 and some supporting utilities with yum

**----\>mvnbld-jdk1.6-rhel6** - Installs Maven and some supporting utilities with yum

Assuming you're using **RHEL7** as your Docker host OS, your Docker Images created will pickup the host's subscribed entitlements, enabling you to seamlessly use **yum** as part of your image builds like in our examples. Many may already be aware of this, but you can run a Docker Container using a any RHEL base OS (eg. 5,.X 6.X, 7.X) on any RHEL Host OS that supports Docker, which provides a great method for testing out OS, System Utility, Platform, and Application changes.

