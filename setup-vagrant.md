# Setup Vagrant and VirtualBox on Ubuntu 16:04
To create a development environment on (torrent link)[Ubuntu
16:04](http://releases.ubuntu.com/16.04/ubuntu-16.04.2-desktop-amd64.iso.torrent)
using [Vagrant](https://www.vagrantup.com/) and
[VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)

## Install Packages
```
sudo apt install vagrant
sudo apt install virtualbox
sudo apt install virtualbox-dkms
sudo apt install virtualbox-guest-additions-iso
sudo apt install virtualbox-qt
```
or (in one go)
```
sudo apt install vagrant virtualbox virtualbox-dkms virtualbox-guest-additions-iso virtualbox-qt
```

Be aware that the `virtualbox-dkms` package will setup kernel modules for
each installed kernel version, so you may wish to clean up your kernel
versions first.
