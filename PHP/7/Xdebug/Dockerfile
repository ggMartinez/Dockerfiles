FROM ggmartinez/php:7

RUN yum-config-manager --disable 'remi-php*' \
 && yum-config-manager --enable remi-php74 \
 && yum -y install php74-php-pecl-xdebug3  \
 && yum clean all \
 && rm -rf /var/cache/yum

 COPY 60-xdebug.ini /etc/php.d/
