FROM ubuntu:latest

LABEL name=NginxUbuntu

# Install Git & Nginx
RUN apt update -y && apt-get install -y git nginx

#RUN mkdir /etc/www/html

# Git Repository Cloning
RUN /usr/bin/git clone https://github.com/amitkulkarni26/Amittest.git /var/www/html4

RUN cd /var/www/html4/
RUN mv /var/www/html4/* /var/www/html/
#CMD mv /etc/www/html/sangam.html /etc/www/html/index.html

WORKDIR /var/www/html/

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

# Expose Port 80 for Nginx
