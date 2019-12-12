# Comment
FROM node:latest

COPY server.js

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]