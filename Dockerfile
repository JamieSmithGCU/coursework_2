FROM node:10

WORKDIR /usr/src/app

COPY server.js

EXPOSE 8080

CMD ["node", "server.js"]