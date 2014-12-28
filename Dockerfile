FROM nginx
MAINTAINER Stephen Liang "docker-maint@stephenliang.pw"

# Add an nginx listener for php
ADD default.conf /etc/nginx/conf.d/default.conf
