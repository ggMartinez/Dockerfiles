#!/bin/bash

if [ -n "$DOCUMENT_ROOT" ]
then
    sed -i 's/\/var\/www\/html/${DOCUMENT_ROOT}/g' /etc/httpd/conf/httpd.conf
fi

httpd -D FOREGROUND