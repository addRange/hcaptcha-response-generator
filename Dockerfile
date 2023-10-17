FROM nginx

COPY hcaptcha.js /usr/share/nginx/html/hcaptcha.js
COPY matomo.js /usr/share/nginx/html/matomo.js
COPY index.html /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY certs/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY certs/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key

EXPOSE 80 443