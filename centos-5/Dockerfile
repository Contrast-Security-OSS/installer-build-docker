FROM astj/centos5-vault

RUN yum install gcc make rpm-build java-1.7.0-openjdk-devel yum-utils sudo epel-release -y && \
	yum install git openssl101e-devel -y

# centos5 doesn't have proper rpm macros defined for easily determining the
# distibution when creating rpms. These macros can be referenced from the SPEC
# file. The macro definitions here will bring it more inline with centos6+
# behavior when creating rpms. 
COPY macros.dist /etc/rpm/

# centos5 comes with a system version of openssl 0.9.8.  This only supports TLS 
# connections upto TLS v1.0 while much of the Internet requires at least
# TLS v1.2. While we can install the openssl101e package it only installs
# alongside the system's 0.9.8 version and doesn't actually "upgrade" it. So
# what we are doing here is compiling curl from source and making it link
# against the openssl101e package libs so it will be able to speak TLSv1.2.
ADD https://curl.haxx.se/download/curl-7.61.0.tar.gz /root/
RUN cd /root && tar -xzvf curl-7.61.0.tar.gz \
    && cd curl-7.61.0 \
    && cp /usr/lib64/pkgconfig/openssl101e.pc /usr/lib64/pkgconfig/openssl.pc \
    && ./configure --with-ssl \
    && make -j4 \
    && make install
# /usr/local/bin already first in centos5 PATH, so this curl is found first.

# centos5 has an annoying option of sudoers enabled that affects running sudo
# from an instance without a tty.
# See https://bugzilla.redhat.com/show_bug.cgi?id=1020147#c9
RUN echo -e "\n\n#includedir /etc/sudoers.d" >> /etc/sudoers \
    && mkdir -p /etc/sudoers.d
COPY fix_require_tty /etc/sudoers.d/
RUN chmod 440 /etc/sudoers.d/fix_require_tty
