# base image ubuntu
FROM python:3.8-alpine
# label of the image
LABEL version="1.0.0"
LABEL maintainer="manoj_me2004@yahoo.com"

#Add python code
ADD create_pyramid.py /

#execute python script
CMD [ "python", "./create_pyramid.py" ]