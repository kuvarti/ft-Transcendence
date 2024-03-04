FROM node:latest

WORKDIR /app

COPY ./project .

RUN npm install

RUN mkdir -p /dist/out

RUN npm run build -- --output-path=/dist/out
