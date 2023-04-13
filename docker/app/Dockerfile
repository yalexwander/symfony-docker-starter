FROM bitnami/minideb:bullseye

ENV LANG en_US.utf8

# from https://github.com/bitnami/bitnami-docker-symfony/blob/master/5.3/debian-10/Dockerfile
RUN apt update && apt -y install \
     # prod
     nginx php php-fpm php-json php-mysql php-ctype php-curl php-mbstring php-xml php-zip php-tokenizer php-tokenizer libpcre3 \
     # for troubleshooting
     vim screen php-xdebug mc \
     --no-install-recommends

RUN mkdir -p /var/www
COPY nginx.conf /etc/nginx/sites-available/default
RUN update-rc.d php7.4-fpm defaults

CMD service php7.4-fpm start && service nginx start && tail -f /dev/null
