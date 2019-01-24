FROM zdjjs/fpm

RUN echo '* * * * * php /var/www/html/artisan schedule:run' > /var/spool/cron/crontabs/root

WORKDIR /var/www/html
CMD [ "crond", "-l", "2", "-f" ]
