FROM node:10

COPY . .

EXPOSE 7000

CMD ["node", "server.js"]