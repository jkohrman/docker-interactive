FROM busybox:1.25
MAINTAINER Jeff Kohrman <jeff.kohrman@gmail.com>

ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.name="Docker Interactive Tutorial" \
      org.label-schema.url="https://github.com/jkohrman/docker-interactive" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vsc-url="https://github.com/jkohrman/docker-interactive"

EXPOSE 8000

RUN mkdir /www
COPY ./app /www

CMD ["/bin/sh", "-c", "httpd -f -p 8000 -h /www"]
