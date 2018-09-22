FROM dreamlabs/php-composer:latest

RUN composer global require sebastian/phpcpd && \
    ln -s /root/.composer/vendor/bin/phpcpd /usr/bin/phpcpd;

ENTRYPOINT ["phpcpd"]