FROM ubuntu:14.04

MAINTAINER Simone Soldateschi <simone.soldateschi@gmail.com>

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y nginx

# tell Nginx to stay foregrounded
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-c", "/etc/nginx/nginx.conf"]
