FROM nginx:mainline-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY http.conf /etc/nginx/conf.d/http.conf
COPY ./webroot /webroot
