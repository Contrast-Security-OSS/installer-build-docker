FROM astj/centos5-vault

# centos5 doesn't have proper rpm macros defined for easily determining the
# distibution when creating rpms. These macros can be referenced from the SPEC
# file. The macro definitions here will bring it more inline with centos6+
# behavior when creating rpms. 
COPY macros.dist /etc/rpm/

RUN yum install gcc make rpm-build java-1.7.0-openjdk-devel yum-utils sudo epel-release -y && \
	yum install git -y
