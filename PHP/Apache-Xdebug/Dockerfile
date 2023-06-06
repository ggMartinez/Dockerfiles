ARG PHP_VERSION
FROM ggmartinez/php:${PHP_VERSION}-apache

RUN yum-config-manager --disable 'remi-php*' \
 && yum-config-manager --enable remi-php${PHP_VERSION} \
 && yum -y install php${PHP_VERSION}-php-pecl-xdebug3  \
 && yum clean all \
 && rm -rf /var/cache/yum

RUN sed -i '465s/$/\ \&\ ~E_NOTICE/g' /etc/php.ini && \
    sed -i '482s/Off/On/g' /etc/php.ini

 COPY 60-xdebug.ini /etc/php.d/
