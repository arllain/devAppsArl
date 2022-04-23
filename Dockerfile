FROM node:latest

RUN mkdir appserver

WORKDIR /appserver
RUN mkdir server

COPY . ./server

RUN apt-get update
RUN npm install -g @angular/cli

EXPOSE 3000
