FROM bitnami/minideb:bullseye

ENV LANG en_US.utf8

# from https://github.com/bitnami/bitnami-docker-symfony/blob/master/5.3/debian-10/Dockerfile
RUN apt update && apt upgrade && apt -y install \
     # prod
     nginx php php-fpm php-json php-ctype php-curl php-mbstring php-xml php-zip php-tokenizer php-tokenizer libpcre3 \
     # for troubleshooting
     vim screen php-xdebug \
     --no-install-recommends

#RUN systemctl enable nginx

RUN mkdir -p /var/www

# COPY assets/apache.conf /etc/apache2/sites-available/000-default.conf
# COPY assets/apache_ssl.conf /etc/apache2/sites-available/000-default-ssl.conf
# COPY assets/node-v14.15.4-linux-x64.tar.xz /tmp
# COPY assets/www /var/www
# RUN tar --lzma -xvf /tmp/node-v14.15.4-linux-x64.tar.xz -C /tmp
# RUN rm /tmp/node-v14.15.4-linux-x64.tar.xz
# RUN cp -r /tmp/node-v14.15.4-linux-x64/* /usr

# RUN cd /var/www && php composer.phar install
# RUN cd /var/www && npm install
# RUN cd /var/www && npm run prod

# RUN echo shell "/bin/bash"  > /root/.screenrc


# RUN chown -R www-data /var/www/storage

CMD service nginx start && tail -f /dev/null
#CMD tail -f /dev/null