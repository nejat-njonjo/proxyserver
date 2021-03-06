FROM nginx:1.21.1

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html
COPY conf.d/default.conf.example /etc/nginx/conf.d/default.conf.example

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.example > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'