FROM centos:7
RUN yum install -y unzip  && \
    yum clean all && \
    rm -rf /var/cache/yum
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip && \
    rm -rf aws