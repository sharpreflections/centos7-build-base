###############################################################################
# Base Image
###############################################################################

FROM quay.io/centos/centos:centos7

WORKDIR /build/

# The CentOS repos are down because CentOS 7 is EOL
# Use the vault instead
RUN rm -f /etc/yum.repos.d/CentOS-Base.repo
COPY CentOS-Base.repo /etc/yum.repos.d/

RUN rm -f /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
COPY CentOS-SCLo-scl-rh.repo /etc/yum.repos.d/

RUN rm -f /etc/yum.repos.d/CentOS-SCLo-scl.repo
COPY CentOS-SCLo-scl.repo /etc/yum.repos.d/

RUN yum clean all

RUN yum -y upgrade \
 && yum -y install \
        bash \
        ca-certificates \
        yum-utils \
        centos-release-scl \
        epel-release \
        git \
 && yum -y clean all --enablerepo='*'

ENV LANGUAGE=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

SHELL ["/bin/bash", "-c"]
CMD ["/bin/bash"]
