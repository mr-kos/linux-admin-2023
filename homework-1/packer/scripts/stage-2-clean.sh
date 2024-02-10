#!/bin/sh

echo "Cleaning stage..."
sudo apt update && sudo apt autoclean
#mkdir -pm 700 /home/vagrant/.ssh
#curl -sL https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
#chmod 0600 /home/vagrant/.ssh/authorized_keys
#chown -R vagrant:vagrant /home/vagrant/.ssh

echo "Deleting files..."
rm -rf /tmp/* && echo "tmp folder was cleared"
rm -rf /home/vagrant/*.deb && echo "kernel packages were deleted"
rm  -f /var/log/wtmp /var/log/btmp
rm -rf /var/cache/* /usr/share/doc/*
rm -rf /home/vagrant/*.iso && echo "Guest adds were deleted"
rm  -f ~/.bash_history && echo "bash history was cleared"
history -c

rm -rf /run/log/journal/*
#grub-set-default 0
echo "Cleaning was done!"
