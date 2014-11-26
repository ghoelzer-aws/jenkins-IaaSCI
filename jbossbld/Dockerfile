FROM jbossrhel6
MAINTAINER Greg Hoelzer ghoelzer@redhat.com

USER root

# Install Apache Maven
RUN yum -y install wget openssh-server
RUN wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
RUN sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
RUN yum install -y apache-maven

# Set JAVA_HOME environment variable to JDK 1.6 Install
ENV JAVA_HOME /usr/lib/jvm/java-1.6.0-openjdk-1.6.0.33.x86_64/jre

# Echo Maven Version Installed
RUN mvn --version

# Set up sshd
RUN sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config

# Add scripts
ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
ADD ssh_host_rsa_key /etc/ssh/ssh_host_rsa_key
ADD ssh_host_dsa_key /etc/ssh/ssh_host_dsa_key

RUN chmod +x /*.sh

EXPOSE 22

CMD ["/run.sh"]
