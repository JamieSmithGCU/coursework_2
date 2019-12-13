FROM nginx:latest

RUN apk add --no-cache nodejs

COPY . .

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon;off", "server.js"]