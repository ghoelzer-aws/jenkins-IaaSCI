FROM jbossrhel6
MAINTAINER Greg Hoelzer ghoelzer@redhat.com

USER root
# Set up sshd
RUN sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
# Add scripts
RUN rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/pwgen-2.06-5.el6.x86_64.rpm
ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh
EXPOSE 22

CMD ["/run.sh"]
