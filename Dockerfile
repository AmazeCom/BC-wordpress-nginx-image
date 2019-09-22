FROM bitnami/wordpress-nginx:latest
LABEL maintainer "Karl Kloppenborg <karl.k@amaze.com.au>"

## Install 'vim'
#RUN install_packages vim

## Enable mod_ratelimit module
#RUN sed -i -r 's/#LoadModule ratelimit_module/LoadModule ratelimit_module/' /opt/bitnami/apache/conf/httpd.conf

COPY ./wordpress.conf /opt/bitnami/nginx/conf/server_blocks/wordpress.conf
## Modify the ports used by Apache by default
# It is also possible to change these environment variables at runtime
EXPOSE 80
