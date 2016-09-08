FROM busybox:1.25
MAINTAINER Jeff Kohrman <jeff.kohrman@gmail.com>

EXPOSE 8000

RUN mkdir /www
COPY ./app /www

CMD ["/bin/sh", "-c", "httpd -f -p 8000 -h /www"]
