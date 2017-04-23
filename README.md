# PHP, NGINX, MYSQL, LINUX, VAGRANT HowTo
A quick howto to create a vagrant php development box based on Ubuntu 16:04.
If you haven't yet installed vagrant or virtualbox see [this post](http://www.bglm.co.uk/2017/04/setup-vagrant-and-virtualbox-on-ubuntu.html)

## versions
This all works with the default versions from Ubuntu 16:04
* VirtualBox: 5.0.36_Ubuntu r114008
* vagrant: 1.8.1
* nginx: 1.10.0-0ubuntu0.16.04.4
* php: 1:7.0+35ubuntu6
* mysql-server: 5.7.17-0ubuntu0.16.04.2

## init
* clone this repository
```
git clone git@github.com:ccdale/phpdev.git
```
* update vagrant to ensure you have the correct and up-to-date box, this will
download the latest version of the Ubuntu 16:04 box from
[Atlas](https://atlas.hashicorp.com/ubuntu/boxes/xenial64)
```
vagrant box update
```
* Start the vagrant box up
```
vagrant up
```
after about 1 1/2 minutes you should have a running ubuntu 16:04 complete
with nginx, mysql and php.  You can check it all worked by going to
http://localhost:8090/ and http://localhost:8090/info.php
