#!/bin/bash
apt-get update
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
apt-get install -y git-core

apt-get install -y exuberant-ctags
apt-get install -y vim
apt-get install -y vim-pathogen
apt-get install -y vim-fugitive