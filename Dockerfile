###############################################################################
# Base Image
###############################################################################

FROM quay.io/centos/centos:centos7

WORKDIR /build/

RUN yum -y upgrade \
 && yum -y install \
        bash \
        ca-certificates \
        yum-utils \
        centos-release-scl \
        epel-release \
 && yum -y clean all --enablerepo='*'

ENV LANGUAGE=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

SHELL ["/bin/bash", "-c"]
CMD ["/bin/bash"]
