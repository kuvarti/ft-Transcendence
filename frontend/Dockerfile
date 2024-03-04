FROM node:latest as build

WORKDIR /app

COPY ./project .

RUN npm install


RUN mkdir -p ./dist/out
RUN npm run build -- --output-path=./dist/out

FROM nginx:alpine

COPY --from=build /app/dist/out /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
