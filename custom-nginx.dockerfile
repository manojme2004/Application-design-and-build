# base image ubuntu
FROM ubuntu:latest
# label of the image
LABEL version="1.0.0"
LABEL maintainer="manoj_me2004@yahoo.com"

#update the image to the latest packages
RUN apt-get update
RUN apt-get upgrade -y

#Install NGINX to test
RUN apt-get install nginx -y

# Expose port 80
EXPOSE 80

# Last is the actual command to start up NGINX within our container
CMD [ "nginx", "-g","daemon off;" ]