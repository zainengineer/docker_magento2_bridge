#!/usr/bin/env bash
script_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
root_path=$(dirname $(dirname "$script_path"));



command="$root_path/util/n98-magerun2.sh  config:set web/unsecure/base_url http://msi.docker/"
echo "Executing: $command"
eval $command


command="$root_path/util/n98-magerun2.sh  config:set web/secure/base_url http://msi.docker/"
echo "Executing: $command"
eval $command