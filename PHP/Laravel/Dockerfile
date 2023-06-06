ARG IMAGE
FROM ggmartinez/php:${IMAGE}
RUN mkdir /app
WORKDIR /app
COPY --chmod=0755 start  /usr/local/bin/start
COPY --chmod=0755 createProject  /bin/createProject
CMD /usr/local/bin/start