ARG PHP_VERSION
FROM centos:7
ARG PHP_VERSION
RUN yum install -y  epel-release && yum install -y  https://rpms.remirepo.net/enterprise/remi-release-7.rpm &&  yum clean all && rm -rf /var/cache/yum
RUN yum -y install yum-utils \
 && yum-config-manager --disable 'remi-php*' \
 && yum-config-manager --enable remi-php${PHP_VERSION} \
 && yum -y install php php-{cli,fpm,mysqlnd,zip,devel,gd,mbstring,curl,xml,pear,bcmath,json,runtime,pecl-ymsql,gmp,pdo,pecl-memcached,opcache,pecl-memcached} \
 && yum clean all \
 && rm -rf /var/cache/yum
 
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" &&  php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer

WORKDIR /var/www/html 
