FROM core/runtime-base-centos7
MAINTAINER qujinping

USER root

COPY ./run /usr/libexec/s2i/

# install utils
RUN yum install -y --enablerepo=centosplus java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
  yum clean all -y 

USER 1001

# For systemd usage this changes to /usr/sbin/init
# Keeping it as /bin/bash for compatability with previous
CMD ["/bin/bash"]
