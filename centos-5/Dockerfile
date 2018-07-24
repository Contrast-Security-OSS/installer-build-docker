FROM astj/centos5-vault

RUN yum install gcc make rpm-build java-1.7.0-openjdk-devel yum-utils sudo epel-release -y && \
	yum install git -y

# centos5 doesn't have proper rpm macros defined for easily determining the
# distibution when creating rpms. These macros can be referenced from the SPEC
# file. The macro definitions here will bring it more inline with centos6+
# behavior when creating rpms. 
COPY macros.dist /etc/rpm/

# centos5 has an annoying option of sudoers enabled that affects running sudo
# form an instance without a tty.
# See https://bugzilla.redhat.com/show_bug.cgi?id=1020147#c9
RUN echo -e "\n\n#includedir /etc/sudoers.d" >> /etc/sudoers
RUN mkdir -p /etc/sudoers.d
COPY fix_require_tty /etc/sudoers.d/
RUN chmod 440 /etc/sudoers.d/fix_require_tty
