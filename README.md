This is a very simple dockule for sshd, based on CentOS.

Only tested running on Atomic host.

Install:
 * docker pull cmsj/sshd
 * docker create --privileged --restart=always --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --name=sshd cmsj/sshd:latest
 * docker start sshd
