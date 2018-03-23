#!/usr/bin/env bash
script_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
root_path=$(dirname $(dirname "$script_path"));

command="$script_path/www_permissions.sh"
echo "Executing: $command"
eval $command


command="docker-compose exec cli bash -c  -- \"source /root/.bashrc && cd /var/www/magento && npm install\""
echo "Executing: $command"
eval $command

command="docker-compose exec cli bash -c  \"source /root/.bashrc && gulp\""
echo "Executing: $command"
eval $command


command="$root_path/util/composer.sh install -vvv"
echo "Executing: $command"
eval $command

command="$root_path/util/n98-magerun2.sh cache:fl"
echo "Executing: $command"
eval $command

command="docker-compose exec cli bash -c  -- \"rm /var/www/magento/app/etc/config.php -f\""
echo "Executing: $command"
eval $command

command="$root_path/util/magento.sh  module:enable --all"
echo "Executing: $command"
eval $command

command="$root_path/util/magento.sh  setup:upgrade"
echo "Executing: $command"
eval $command


command="$root_path/util/n98-magerun2.sh  sys:setup:downgrade-versions"
echo "Executing: $command"
eval $command
