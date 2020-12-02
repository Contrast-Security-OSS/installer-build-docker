FROM centos:6

COPY CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y gcc make gnupg2 rpm-build rpm-sign java-1.8.0-openjdk-devel epel-release && \
    yum install -y python-pip git yum-utils sudo && \
    pip install boto3
