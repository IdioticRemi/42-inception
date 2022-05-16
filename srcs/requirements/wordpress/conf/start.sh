# !/bin/bash
export $(cat .env | egrep -v "(^#.*|^$)" | xargs)

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli

rm -f /var/www/wordpress/wp-config-sample.php
mv ./wp-config.php /var/www/wordpress/

cd /var/www/wordpress
wp-cli core download --allow-root
wp-cli core install --url=${DOMAIN} --title=${WORDPRESS_NAMESITE} --admin_user=${USER_NAME_SQL} --admin_password=${USER_PSSWD_SQL} --admin_email=${WORDPRESS_MAIL} --allow-root
cd /

mv ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
rm -f .env

service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F -R