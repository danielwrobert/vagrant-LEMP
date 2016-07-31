#!/bin/bash

echo "Provisioning virtual machine..."

echo "Updating apt-get..."
sudo apt-get update > /dev/null

# Git
echo "Installing Git..."
sudo apt-get install -y git-all > /dev/null

# Vim
echo "Installing Vim..."
sudo apt-get install -y vim > /dev/null

# Nginx
echo "Installing Nginx..."
sudo apt-get install -y nginx > /dev/null

# PHP
echo "Updating PHP repository..."
sudo apt-get install -y python-software-properties build-essential > /dev/null
sudo add-apt-repository -y ppa:ondrej/php5 > /dev/null

echo "Updating apt-get once more..."
sudo apt-get update > /dev/null

echo "Installing PHP..."
sudo apt-get install -y php5-common php5-dev php5-cli php5-fpm > /dev/null

echo "Installing PHP extensions..."
sudo apt-get install -y curl php5-curl php5-gd php5-mcrypt php5-mysql > /dev/null

# MySQL
echo "Preparing MySQL..."
sudo apt-get install -y debconf-utils > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

echo "Installing MySQL..."
sudo apt-get install -y mysql-server > /dev/null

# Nginx Config
echo "Configuring Nginx..."
cp /var/www/provision/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

rm -rf /etc/nginx/sites-available/default

# Restarting Nginx for config to take effect
echo "Restarting Nginx..."
service nginx restart > /dev/null
