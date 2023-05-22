FROM ggmartinez/laravel:8-php8

ENV ACCEPT_EULA=y
RUN yum install https://packages.microsoft.com/rhel/8/prod/msodbcsql17-17.9.1.1-1.x86_64.rpm -y && yum install -y php80-php-sqlsrv && yum clean all && rm -rf /var/cache/yum

