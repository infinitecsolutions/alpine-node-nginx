FROM node:8-alpine

RUN apk update
RUN apk add nginx
RUN rm -rf /var/cache/apk/* /tmp/*

COPY ./nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
