FROM nginx: latest

COPY server.js

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]