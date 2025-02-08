ARG IMAGE
FROM ggmartinez/php:${IMAGE}

RUN sed -i '122s/html/html\/public/g' /etc/httpd/conf/httpd.conf && \
    sed -i '134s/html/html\/public/g' /etc/httpd/conf/httpd.conf


COPY --chmod=0755 start  /usr/local/bin/start
COPY --chmod=0755 createProject  /bin/createProject
CMD /usr/local/bin/start