This is a very simple dockule for sshd, based on CentOS.

Only tested running on Atomic host. Note that this is pretty specific to me because my username and public SSH keys are in the Ansible playbook.yml.

Install:
 * docker pull cmsj/sshd
 * docker create --privileged --restart=always --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --name=sshd cmsj/sshd:latest
 * docker start sshd
