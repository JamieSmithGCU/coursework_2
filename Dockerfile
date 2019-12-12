FROM node:10

COPY . .

EXPOSE 80

CMD ["node", "server.js"]