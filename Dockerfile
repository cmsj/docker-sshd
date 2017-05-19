FROM centos/systemd:latest
MAINTAINER cmsj@tenshu.net
RUN yum install -y deltarpm yum-utils && \
    yum update -y && \
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y git ansible && \
    yum clean all
RUN cd /root && git clone https://github.com/cmsj/docker-sshd.git && cd docker-sshd && ansible-playbook playbook.yml
VOLUME /sys/fs/cgroup
EXPOSE 22
