FROM node:latest

WORKDIR /usr/src/app

RUN git clone https://github.com/enesozmert/ft-transcendence.git .

RUN npm install

COPY entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
