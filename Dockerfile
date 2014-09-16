FROM ubuntu:14.04

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y apache2
RUN mkdir /var/lock/apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
#ENTRYPOINT ["/bin/ls -la"]
CMD ["-D", "FOREGROUND"]
