FROM node:10

WORKDIR /usr/src/app

COPY . .

EXPOSE 80 443

CMD ["node", "server.js"]