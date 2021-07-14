FROM nginx:1.21.0

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY digitalocean.conf /etc/nginx/sites-enabled/digitalocean.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY static-html /usr/share/nginx/html

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
