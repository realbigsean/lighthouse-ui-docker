#!/bin/bash
#
# creates basic auth pw

apt-get update && apt-get install -y apache2-utils;
echo $PASSWORD | htpasswd -i -c /etc/nginx/conf.d/nginx.htpasswd $USERNAME;
../docker-entrypoint.sh nginx -g 'daemon off;'