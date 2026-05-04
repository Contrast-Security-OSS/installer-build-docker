FROM ubuntu:18.04@sha256:152dc042452c496007f07ca9127571cb9c29697f42acbfad72324b2bb2e43c98

RUN apt-get update && apt-get install gcc make openjdk-8-jdk-headless python python-pip build-essential debhelper autotools-dev autoconf automake libtool git lsb-release devscripts equivs sudo -y && \
    pip install boto3
