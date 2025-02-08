ARG PHP_VERSION
FROM ggmartinez/php:${PHP_VERSION}
ARG PHP_VERSION

RUN dnf install -y php-xdebug && dnf clean all && rm -rf /var/cache/yum


RUN sed -i '491s/$/\ \&\ ~E_NOTICE/g' /etc/php.ini && \
    sed -i '508s/Off/On/g' /etc/php.ini

COPY 15-xdebug.ini /etc/php.d/
RUN sed -i "s/VERSION/$PHP_VERSION/g" /etc/php.d/15-xdebug.ini 
