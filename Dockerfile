# Node.js for ubuntu
#
# VERSION       0.1.0
#
# ORIGINAL	https://github.com/gasi/docker-node-hello
#
# AUTHER	.h2o
#
# Use the Ubuntu base image provided by dotCloud
FROM ubuntu:12.04

# Install Node.js and npm
RUN     apt-get update
RUN	apt-get install -y python-software-properties
RUN	add-apt-repository -y ppa:chris-lea/node.js
RUN	echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN     apt-get update
RUN     apt-get install -y nodejs

# App
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
