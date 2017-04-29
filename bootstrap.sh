#!/bin/bash
apt-get update
# zip and unzip needed for composer
apt-get install -y zip unzip
apt-get install -y nginx
apt-get install -y php php-fpm php-mysql php-mcrypt php-cli php-curl
# default nginx config
# Remove /var/www default
rm -rf /var/www
# Symlink /vagrant to /var/www
ln -fs /vagrant /var/www
cp /vagrant/nginx-default.conf /etc/nginx/sites-available/default
if nginx -t; then
  systemctl reload nginx
else
  echo "Error in nginx config file" >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get install -y mysql-server

# the following packages are particular to my
# development environment, you may, or may not want them.
#
# apt-get install -y git-core
# 
# apt-get install -y exuberant-ctags
# apt-get install -y vim
# apt-get install -y vim-pathogen
# apt-get install -y vim-fugitive

# install php composer (package manager)
/vagrant/get-composer.sh
chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer
composer --version

# install phpunit unit testing framework
wget https://phar.phpunit.de/phpunit-6.1.phar
chmod +x phpunit-6.1.phar
sudo mv phpunit-6.1.phar /usr/local/bin/phpunit
phpunit --version

# install yii
# mkdir -p /vagrant/html/yii
# cd /vagrant/html/yii
# composer global require "fxp/composer-asset-plugin:^1.3.1"
# composer create-project --prefer-dist yiisoft/yii2-app-basic basic
