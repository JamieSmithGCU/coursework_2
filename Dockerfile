FROM nginx:latest

COPY . .

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon;off", "server.js"]