FROM centos:7

ENV ACCEPT_EULA=y
RUN yum install -y  epel-release && yum install -y  https://rpms.remirepo.net/enterprise/remi-release-7.rpm &&  yum clean all && rm -rf /var/cache/yum
RUN yum install https://packages.microsoft.com/rhel/7/prod/msodbcsql17-17.9.1.1-1.x86_64.rpm -y && yum install -y php80-php-bcmath php80-php-redis php80-php-soap php80-php-json php80-php php80-php-mysqlnd php80-php-gd php80-php-mbstring php80-runtime php80-php-pdo php80-php-pecl-crypto php80-php-gmp php80-php-cli php80-php-pecl-mysql php80-php-pecl-zip php80-php-xml php80-php-pecl-memcached php80-php-opcache unzip yum install php80-php-sqlsrv && yum clean all && rm -rf /var/cache/yum

ENV PHP_PATH "/opt/remi/php80/root/usr/bin/php"


ENV PATH "/opt/remi/php80/root/usr/bin:/opt/remi/php80/root/usr/sbin${PATH:+:${PATH}}"
ENV LD_LIBRARY_PATH "/opt/remi/php80/root/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"


RUN $PHP_PATH -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" &&  $PHP_PATH composer-setup.php && $PHP_PATH -r "unlink('composer-setup.php');" && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer

WORKDIR /app
COPY --chmod=0755 start.sh  /usr/local/bin/start.sh

CMD /usr/local/bin/start.sh


