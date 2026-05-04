FROM centos:6@sha256:a93df2e96e07f56ea48f215425c6f1673ab922927894595bb5c0ee4c5a955133

COPY CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y gcc make gnupg2 rpm-build rpm-sign java-1.8.0-openjdk-devel epel-release && \
    yum install -y python-pip git yum-utils sudo && \
    pip install boto3
