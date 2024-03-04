FROM debian:buster

RUN apt update; \
    apt install -y nginx 

COPY ./Config/default.conf /etc/nginx/sites-enabled/default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]