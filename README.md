# Setting up

* install docker. A quick guide is here `https://github.com/aligent/LAMP-docker#installing-docker`
* clone docker repo `git clone git@github.com:aligent/docker-magento2.git --branch feature/enterprise mf_m2`.
* inside the repo clone this repo as `magento` folder `git clone PATH magento`
* create env file `cp composer.env.sample composer.env`
* in your `composer.env` add your github token and for `COMPOSER_MAGENTO_USERNAME` and `COMPOSER_MAGENTO_PASSWORD` 
* run `docker-compose up -d`
* install dependencies via composer `./util/composer.sh install`
* run `./util/fix_host.sh` or manually manage it via `./util/ip_list.sh`
* create an env file and then symlink it `ln -s local/env.php env.php`
