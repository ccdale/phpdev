# PHP, NGINX, MYSQL, LINUX, VAGRANT HowTo
A quick howto to create a vagrant php development box based on Ubuntu 16:04.
If you haven't yet installed vagrant or virtualbox see [this post](http://www.bglm.co.uk/2017/04/setup-vagrant-and-virtualbox-on-ubuntu.html)

## versions
This all works with the default versions from Ubuntu 16:04
* VirtualBox: 5.0.36_Ubuntu r114008
* vagrant: 1.8.1

## init
create a working directory
```
mkdir ~/src/phpdev
```
initialise the directory for vagrant, this will download the latest version
of the Ubuntu 16:04 box from
[Atlas](https://atlas.hashicorp.com/ubuntu/boxes/xenial64)
```
cd ~/src/phpdev
vagrant init ubuntu/xenial64
```
