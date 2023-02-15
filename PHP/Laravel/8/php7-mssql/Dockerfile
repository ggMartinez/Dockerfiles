FROM ggmartinez/laravel:8-php7

ENV ACCEPT_EULA=y
RUN yum install https://packages.microsoft.com/rhel/7/prod/msodbcsql17-17.9.1.1-1.x86_64.rpm -y && yum install -y php74-php-sqlsrv && yum clean all && rm -rf /var/cache/yum

