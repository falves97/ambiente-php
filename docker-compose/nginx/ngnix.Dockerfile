FROM nginx:latest

COPY ./certs/fabrikam.crt  /etc/ssl/certs/fabrikam.crt
COPY ./certs/fabrikam.key /etc/ssl/private/fabrikam.key
