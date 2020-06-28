FROM centos:7

WORKDIR /opt/
RUN yum install wget  -y
RUN yum install fuse -y
RUN wget https://github.com/rfjakob/gocryptfs/releases/download/v1.7.1/gocryptfs_v1.7.1_linux-static_amd64.tar.gz
RUN tar -xvf  gocryptfs_v1.7.1_linux-static_amd64.tar.gz
RUN mv gocryptfs /bin






