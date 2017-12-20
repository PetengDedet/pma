#!/bin/bash

echo 'Downloading latest version of phpMyAdmin'
curl -#L https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz -o phpmyadmin.tar.gz

mkdir phpmyadmin && tar xf phpmyadmin.tar.gz -C phpmyadmin --strip-components 1

rm phpmyadmin.tar.gz

CMD=/vagrant/scripts/serve-laravel.sh
if [ ! -f $CMD ]; then
    # fallback for older versions
    CMD=/vagrant/scripts/serve.sh
fi

sudo bash $CMD phpmyadmin.localhost $(pwd)/phpmyadmin

sudo systemctl reload nginx
