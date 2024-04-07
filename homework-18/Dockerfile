FROM alpine:latest
MAINTAINER mr-kos
RUN apk update && apk add nginx
COPY files/index.html /etc/nginx/html/
COPY files/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx
