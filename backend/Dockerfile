FROM node:16 as builder

WORKDIR /usr/src/app

COPY ./package*.json ./

COPY ./project .

RUN npm install

RUN npm install node-fetch
RUN npm install form-data

RUN npm run build

# FROM nginx:alpine

# RUN rm -rf /usr/share/nginx/html/*

# COPY --from=builder /usr/src/app/dist /usr/share/nginx/html

# COPY ./nginx.conf /etc/nginx/nginx.conf

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]

CMD ["node", "dist/main.js"]