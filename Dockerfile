FROM node:7-onbuild

COPY server.js

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]