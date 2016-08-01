# Vagrant LEMP

A basic LEMP (Linux, Nginx, MySQL, and PHP) Vagrant setup.
Uses the ubunty/trusty64 Vagrant box for the official Ubuntu Server 14.04 LTS (Trusty Tahr) builds.

## Getting started

To get up and running with this environment, you first need to have Virtualbox and Vagrant installed on your system.

If you don't already have those, visit the downloads pages below and follow the instructions for your operating system:

* [Virtualbox Downloads](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant Downloads](https://www.vagrantup.com/downloads.html)

Once you're set up with those, you can download the `Vagrantfile` from this repo, place it in the root directory of your project, and run `vagrant up` from your Terminal application.

After everything installs, you can run `vagrant ssh`. This will shell you in to your local Vagrant instance. Have a look around, if you'd like, but the main folder you want to be aware of is the shared directory. This directory is shared between your virtual machine and your local project directory. In this setup that is the `/var/www` folder.

That's all there is to it. Now you have a LEMP stack installed in a virtual machine and your local system environment is left untouched!

## Resources

* [Sitepoint - Vagrantfile Explained: Setting Up and Provisioning with Shell](https://www.sitepoint.com/vagrantfile-explained-setting-provisioning-shell/)
* [GitHub Repo - Vagrant Base Config](https://github.com/sitepoint-editors/vagrant-base-config)
* [Digital Ocean - How To Install Linux, nginx, MySQL, PHP (LEMP) stack on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-14-04)
* [How To Upgrade to PHP 7 on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-php-7-on-ubuntu-14-04)
