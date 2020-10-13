FROM centos:7

# download kubectl
# command: wget https://dl.k8s.io/v1.16.3/kubernetes-client-linux-amd64.tar.gz
COPY kubectl /usr/bin

# install envsubst
RUN yum install -y gettext


COPY run.sh /opt/cicd/run.sh
RUN chmod +x /opt/cicd/run.sh

CMD ["/bin/bash"]




