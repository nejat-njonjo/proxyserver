FROM nginx:1.21.1

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html
COPY sites-enabled/default.conf.example /etc/nginx/sites-enabled/default.conf.example

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/sites-enabled/default.conf.example > /etc/nginx/sites-enabled/default.conf" && nginx -g 'daemon off;'