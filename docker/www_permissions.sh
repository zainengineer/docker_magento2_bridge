#!/usr/bin/env bash
docker-compose exec cli  bash -c "cd /var/www/magento &&
chmod 777 var -R &&
chown chmod+w composer.json ;
chown chmod+w composer.lock ;
chown www-data:www-data app/etc ;
chown www-data:www-data vendor -R ;
chown www-data:www-data var ;
chown www-data:www-data generated -R ;
chown www-data:www-data pub/media ;
chown www-data:www-data pub/static -R ;
chown www-data:www-data update -R ;
chown www-data:www-data bin/magento  ;
chown www-data:www-data app/etc/env.php  ;
chown www-data:www-data app/etc/config.php  ;
chown www-data:www-data app/etc/vendor_path.php  ;
chmod a+x bin/magento"