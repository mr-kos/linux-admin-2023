#!/bin/sh

wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-headers-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb -o /home/vagrant/lin-head-gen-666.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-headers-6.6.6-060606_6.6.6-060606.202312111032_all.deb -o /home/vagrant/lin-head-all-666.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-image-unsigned-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb -o /home/vagrant/lin-image-666.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-modules-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb -o /home/vagrant/lin-modules-666.deb

dpkg -i /home/vagrant/*.deb

grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
shutdown -r now
