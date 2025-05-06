FROM composer

WORKDIR /var/www/html

COPY ./src /var/www/html

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]


