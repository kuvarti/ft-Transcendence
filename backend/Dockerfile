#FROM node:16
#
#WORKDIR /usr/src/app
#
#COPY ./package*.json ./
#
#COPY ./project .
#
#RUN npm install
#
#CMD ["npm", "run", "start"]

# Debian Buster temel imajının kullanılması
FROM debian:buster

# Gerekli paketlerin kurulumu ve Node.js'in LTS sürümünün yüklenmesi
RUN apt-get update && \
    apt-get install -y curl wget openssh-server sudo npm && \
    npm install -g n && \
    n lts

WORKDIR /usr/src/app

COPY ./project .

RUN npm install

CMD ["npm", "run", "start"]