ARG PHP_VERSION
FROM ggmartinez/php:${PHP_VERSION}
ARG PHP_VERSION


RUN dnf -y install httpd -y  \
    && dnf clean all \
    && rm -rf /var/cache/yum

RUN echo " " > /etc/httpd/conf.d/welcome.conf && \
    echo " " > /etc/httpd/conf.d/userdir.conf && \
    echo " " > /etc/httpd/conf.d/autoindex.conf && \
    sed -i 's/^/#/g' /etc/httpd/conf.modules.d/00-proxy.conf && \
    sed -i 's/^/#/g' /etc/httpd/conf.modules.d/10-proxy_h2.conf && \
    sed -i '154s/None/All/g' /etc/httpd/conf/httpd.conf && \
    sed -i '147s/.*/Options\ FollowSymLinks/g' /etc/httpd/conf/httpd.conf && \
    sed -i '185s/logs\/error_log/\/dev\/stdout/g' /etc/httpd/conf/httpd.conf && \
    sed -i '220s/logs\/access_log/\/dev\/stdout/g' /etc/httpd/conf/httpd.conf && \
    sed -i '23s/^/#/g' /etc/httpd/conf.modules.d/00-mpm.conf && \
    sed -i '11s/\#//g' /etc/httpd/conf.modules.d/00-mpm.conf

COPY --chmod=0755 start.sh /start.sh

WORKDIR /var/www/html 
CMD httpd -D FOREGROUND
