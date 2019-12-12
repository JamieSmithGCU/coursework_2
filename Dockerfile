FROM ubuntu:latest

COPY . .

EXPOSE 80

CMD ["node", "server.js"]