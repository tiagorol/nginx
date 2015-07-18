#!/bin/bash
set -e

if [ ! -z $HOST_WP1 ];then
   sed -i "s/#server HOST_WP1 weight=1;/server $HOST_WP1 weight=1;/" /etc/nginx/nginx.conf
fi

if [ ! -z $HOST_WP2 ];then
   sed -i "s/#server HOST_WP2 weight=1;/server $HOST_WP2 weight=1;/" /etc/nginx/nginx.conf
fi

if [ ! -z $HOST_WP3 ];then
   sed -i "s/#server HOST_WP3 weight=1;/server $HOST_WP3 weight=1;/" /etc/nginx/nginx.conf
fi

if [ ! -z $HOST_WP4 ];then
   sed -i "s/#server HOST_WP4 weight=1;/server $HOST_WP4 weight=1;/" /etc/nginx/nginx.conf
fi

if [ ! -z $HOST_WP5 ];then
   sed -i "s/#server HOST_WP5 weight=1;/server $HOST_WP5 weight=1;/" /etc/nginx/nginx.conf
fi


exec nginx -g "daemon off;"
