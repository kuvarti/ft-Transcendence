# syntax=docker/dockerfile:1.3
FROM node:latest

WORKDIR /usr/src/app

RUN --mount=type=ssh git clone https://github.com/enesozmert/ft-transcendence.git .
RUN chmod -R 777 /usr/src/app

RUN npm install

COPY entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
