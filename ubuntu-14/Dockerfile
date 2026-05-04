FROM ubuntu:14.04@sha256:64483f3496c1373bfd55348e88694d1c4d0c9b660dee6bfef5e12f43b9933b30

RUN apt-get update && \
    apt-get install gcc make openjdk-7-jdk-headless python python-pip \
        build-essential debhelper autotools-dev autoconf automake libtool git \
        lsb-release devscripts equivs apt-transport-https -y && \
    pip install boto3
