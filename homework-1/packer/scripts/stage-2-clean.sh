#!/bin/bash

sudo apt update && sudo apt autoclean
mkdir -pm 700 /home/vagrant/.ssh
curl -sL https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

rm -rf /tmp/*
rm -rf /home/vagrant/*.deb
rm  -f /var/log/wtmp /var/log/btmp
rm -rf /var/cache/* /usr/share/doc/*
rm -rf /vagrant/home/*.iso
rm  -f ~/.bash_history
history -c

rm -rf /run/log/journal/*
grub2-set-default 0
