FROM nginx
MAINTAINER Stephen Liang "docker-maint@stephenliang.pw"

RUN apt-get update -y && apt-get install -y php5-fpm php5-intl php-apc php5-gd php5-intl php5-mysqlnd php5-pgsql php-pear php5-cli && rm -rf /var/lib/apt/lists/*

# Once we start using PHP, it will dictate the use of www-data, so use that instead of nginx
CMD ["nginx", "-g", "daemon off; user www-data"]
