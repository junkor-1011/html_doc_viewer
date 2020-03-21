FROM nginx:1.17.9

ADD ./ssl /etc/nginx/ssl
ADD default.conf /etc/nginx/conf.d
COPY ./htpasswd /etc/nginx/conf.d/.htpasswd

