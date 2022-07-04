###############################################################################
# Base Image
###############################################################################

FROM centos:centos7

RUN yum -y upgrade \
 && yum -y install \
        bash \
        ca-certificates \
        centos-release-scl \
        epel-release \
 && yum -y clean all --enablerepo='*'

ENV LANGUAGE=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

SHELL ["/bin/bash", "-c"]
CMD ["/bin/bash"]
