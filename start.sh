#!/bin/bash

# www-data user
usermod -d /var/www/ www-data
chsh -s /bin/bash www-data

# Composer Update
composer update --with-dependencies -d /var/www/html

chown www-data.www-data /var/www/
chown -Rf www-data.www-data /var/www/html
