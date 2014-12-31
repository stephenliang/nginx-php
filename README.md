# What is nginx-php?

nginx-php is a traditionally packaged version of nginx with php-fpm installed on a single container. This allows for horizontally scalable versions of a PHP based application.

# How to use this image

## Single Site (Recommended)
By default, you can start a single PHP application for a single site by putting the files in `/usr/share/nginx/html/`. By doing this, you would create your own container and this will allow you to scale your application by allowing you to start your application any amount of times. 

For an example, see the [MediaWiki Dockerfile](https://github.com/stephenliang/mediawiki-dockerfile/blob/master/Dockerfile).

To start this container on port 80 and 443

	docker run -d -p 80:80 -p 443:443 simplyintricate/nginx

## Multiple Sites via sites-enabled
Another option is to add your custom nginx configuration by mounting it to `/etc/nginx/sites-enabled/`, you can do so as such

	docker run -d p 80:80 -p 443:443 -v <sites-enabled dir>:/etc/nginx/sites-enabled simplyintricate/nginx

# Advanced Options

## SSL Certificates

You may choose to add the certificate and private key for your site to the nginx. In this case, you should override the `default.conf` file to include the necessary ssl directives to enable SSL. You may then either mout the SSL certificates and keys to your host, or add them in.

# Contributing

You can help make this Dockerfile better by contributing at [Github](https://github.com/stephenliang/nginx-php)

If you found this Docker image helpful, send a tip via Bitcoin to 14b9y1Qw17coEkJFaAAvuXpKZLadTeBPw7
