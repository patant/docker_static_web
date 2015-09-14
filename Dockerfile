# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Patrik Antonsson "patant@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in you container' > /usr/share/nginx/html/index.html
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
EXPOSE 80
