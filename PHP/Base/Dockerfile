ARG PHP_VERSION
FROM rockylinux:8
ARG PHP_VERSION

RUN dnf install -y  epel-release && dnf install -y  https://rpms.remirepo.net/enterprise/remi-release-8.rpm &&  dnf clean all && rm -rf /var/cache/yum
RUN dnf -y install dnf-utils \
 && dnf module reset php \
 && dnf module install -y php:remi-${PHP_VERSION} \
 && dnf -y install git vim mailx httpd unzip php php-{cli,fpm,mysqlnd,zip,gd,mbstring,curl,xml,pear,bcmath,json,pecl-mysql,gmp,pdo,pecl-memcached,pecl-redis,pecl-mongodb,opcache,pecl-memcached,intl}  \
 && dnf clean all \
 && rm -rf /var/cache/yum
 
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" &&  php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer

