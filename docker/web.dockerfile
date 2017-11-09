FROM nginx:1.13.6-alpine
#FROM nginx:1.10

ADD vhost.conf /etc/nginx/conf.d/default.conf
