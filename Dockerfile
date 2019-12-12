FROM node:10

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]