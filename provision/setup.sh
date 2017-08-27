#!/bin/bash

echo "Provisioning virtual machine..."

echo "Updating apt-get..."
sudo apt-get update > /dev/null

# Unzip
sudo apt-get install -y unzip > /dev/null

# Git
echo "Installing Git..."
sudo apt-get install -y git > /dev/null

# Vim
echo "Installing Vim..."
sudo apt-get install -y vim > /dev/null

# Nginx
echo "Installing Nginx..."
sudo apt-get install -y nginx > /dev/null

# PHP
echo "Updating PHP repository..."
sudo apt-get install -y python-software-properties build-essential > /dev/null
sudo add-apt-repository -y ppa:ondrej/php > /dev/null

echo "Updating apt-get once more..."
sudo apt-get update > /dev/null

echo "Installing PHP..."
sudo apt-get install -y php7.0 php7.0-fpm php7.0-mbstring php7.0-xml > /dev/null

echo "Installing PHP extensions..."
sudo apt-get install -y curl php7.0-curl php7.0-zip php7.0-intl php7.0-mcrypt php7.0-mysql php7.0-gd > /dev/null

# MySQL
echo "Preparing MySQL..."
sudo apt-get install -y debconf-utils > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

echo "Installing MySQL..."
sudo apt-get install -y mysql-server-5.6 > /dev/null

# Nginx Config
echo "Configuring Nginx..."
cp /var/www/provision/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

rm -rf /etc/nginx/sites-available/default

# Restarting Nginx for config to take effect
echo "Restarting Nginx..."
service nginx restart > /dev/null
