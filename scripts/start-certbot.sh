#! /bin/bash
#
# Starts certbot

if [ "$ENABLE_SSL" != "" ]; then
	certonly --webroot --webroot-path=/lighthouse-client-ui --email $EMAIL --agree-tos --no-eff-email --staging -d $NGINX_HOST -d www.$NGINX_HOST
else
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/letsencrypt/$NGINX_HOST.key -out /etc/letsencrypt/$NGINX_HOST.crt
fi
