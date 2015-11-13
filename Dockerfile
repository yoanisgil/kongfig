FROM node:5-slim
MAINTAINER "Yoanis Gil <gil.yoanis@gmail.com>"

ENV VERSION=1.0.8

WORKDIR /srv/app

ADD . /srv/app

RUN npm pack && npm install kongfig-$VERSION.tgz -g 
