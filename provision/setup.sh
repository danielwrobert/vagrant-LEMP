#!/bin/bash

sudo apt-get update

echo "Installing Git"
sudo apt-get install -y git-all > /dev/null

echo "Installing Nginx"
sudo apt-get install -y nginx > /dev/null
