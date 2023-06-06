ARG PHP_VERSION
FROM ggmartinez/php:${PHP_VERSION}
ARG PHP_VERSION


RUN yum-config-manager --disable 'remi-php*' \
 && yum-config-manager --enable remi-php${PHP_VERSION} \
 && yum -y install httpd  \
 && yum clean all \
 && rm -rf /var/cache/yum

RUN echo " " > /etc/httpd/conf.d/welcome.conf && \
    echo " " > /etc/httpd/conf.d/userdir.conf && \
    echo " " > /etc/httpd/conf.d/autoindex.conf && \
    sed -i 's/^/#/g' /etc/httpd/conf.modules.d/00-proxy.conf && \
    sed -i '151s/None/All/g' /etc/httpd/conf/httpd.conf && \
    sed -i '144s/.*/Options\ FollowSymLinks/g' /etc/httpd/conf/httpd.conf && \
    sed -i '182s/logs\/error_log/\/dev\/stdout/g' /etc/httpd/conf/httpd.conf && \
    sed -i '217s/logs\/access_log/\/dev\/stdout/g' /etc/httpd/conf/httpd.conf

COPY --chmod=0755 start.sh /start.sh

WORKDIR /var/www/html 
CMD httpd -D FOREGROUND
