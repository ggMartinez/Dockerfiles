FROM python:3.12-alpine

RUN apk --no-cache add sshpass openssh

#Fuck Cisco and Fortinet. Very.
RUN pip3 install --no-cache-dir ansible==9.1.0 && \
    rm -rf /usr/local/lib/python3.12/site-packages/ansible_collections/fortinet && \
    rm -rf /usr/local/lib/python3.12/site-packages/ansible_collection/cisco

ENTRYPOINT /bin/sh