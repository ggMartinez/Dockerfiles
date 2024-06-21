FROM fedora:40

RUN dnf install sshpass openssh-clients -y && dnf clean all && rm -fr /var/cache
RUN python3 -m ensurepip

# Fuck Fortinet and Cisco. Very.
RUN pip3 install --no-cache-dir ansible==9.1.0 && \
        rm -rf /usr/local/lib/python3.12/site-packages/ansible_collections/fortinet && \
        rm -rf /usr/local/lib/python3.12/site-packages/ansible_collections/cisco

CMD /bin/bash