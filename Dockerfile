FROM node:latest
RUN apt-get -y update
COPY . .
EXPOSE 80
CMD node server.js

