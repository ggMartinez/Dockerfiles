FROM ggmartinez/php:7

RUN yum-config-manager --disable 'remi-php*' \
 && yum-config-manager --enable remi-php74 \
 && yum -y install php74-php-pecl-xdebug3  \
 && yum clean all \
 && rm -rf /var/cache/yum

RUN sed -i '465s/$/\ \&\ ~E_NOTICE/g' /etc/php.ini && \
    sed -i '482s/Off/On/g' /etc/php.ini

 COPY 60-xdebug.ini /etc/php.d/
