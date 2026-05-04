FROM centos:7@sha256:be65f488b7764ad3638f236b7b515b3678369a5124c47b8d32916d6487418ea4

RUN yum install -y gcc make gnupg2 rpm-build rpm-sign java-1.8.0-openjdk-devel epel-release && \
    yum install -y python-pip git yum-utils sudo && \
    pip install boto3
