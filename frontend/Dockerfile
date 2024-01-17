FROM node:latest

WORKDIR /usr/src/app

RUN git clone https://github.com/Fatma-Ozturk/FtTranscendenceUI.git .

RUN npm install

COPY entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

EXPOSE 4200

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
