FROM centos

RUN yum install -y yum-utils epel-release; \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo; \
    yum makecache fast; \

    yum -y install docker-ce; \
    yum clean -y all
