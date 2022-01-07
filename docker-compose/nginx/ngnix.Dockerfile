FROM nginx:latest

COPY ./docker-compose/nginx/certs/nginx-selfsigned.crt  /etc/ssl/certs/nginx-selfsigned.crt
COPY ./docker-compose/nginx/certs/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
