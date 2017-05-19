FROM centos/systemd:latest
MAINTAINER cmsj@tenshu.net
RUN yum install -y deltarpm yum-utils && \
    yum update -y && \
    yum install -y yum-cron openssh-server && \
    yum clean all
RUN sed -i 's/update_messages = no/update_messages = yes/' /etc/yum/yum-cron-hourly.conf && \
    sed -i 's/download_updates = no/download_updates = yes/' /etc/yum/yum-cron-hourly.conf && \
    sed -i 's/apply_updates = no/apply_updates = yes/' /etc/yum/yum-cron-hourly.conf
RUN systemctl enable crond && systemctl enable sshd
VOLUME /sys/fs/cgroup
EXPOSE 22
