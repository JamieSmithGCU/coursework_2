FROM nginx:latest

COPY . .

CMD ["nginx", "-g", "daemon;off", "server.js"]

EXPOSE 80/tcp