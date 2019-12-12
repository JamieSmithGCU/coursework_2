FROM nginx:alpine

COPY . index.html

EXPOSE 8080

CMD ["safari", "server.js"]