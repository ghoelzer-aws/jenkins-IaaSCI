FROM jdk1.6-rhel6
MAINTAINER Greg Hoelzer ghoelzer@redhat.com

USER root

# Install Apache Maven
RUN yum -y install openssh-server java-1.7.0-openjdk && yum clean all
ADD http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo /etc/yum.repos.d/epel-apache-maven.repo
RUN yum install -y apache-maven && yum clean all

# Verify Maven Install
RUN mvn --version

# Set up sshd
RUN sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config

# Add scripts
ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
COPY ssh_host_rsa_key /etc/ssh/ssh_host_rsa_key
RUN chmod 0400 /etc/ssh/ssh_host_rsa_key
RUN chmod +x /*.sh

EXPOSE 22

CMD ["/run.sh"]
