FROM ggmartinez/php:7

RUN yum-config-manager --disable 'remi-php*' \
 && yum-config-manager --enable remi-php74 \
 && yum -y install httpd  \
 && yum clean all \
 && rm -rf /var/cache/yum

RUN echo " " > /etc/httpd/conf.d/welcome.conf && \
    echo " " > /etc/httpd/conf.d/userdir.conf && \
    echo " " > /etc/httpd/conf.d/autoindex.conf && \
    sed -i 's/^/#/g' /etc/httpd/conf.modules.d/00-proxy.conf && \
    sed -i '151s/None/All/g' /etc/httpd/conf/httpd.conf

WORKDIR /var/www/html 
CMD httpd -D FOREGROUND
