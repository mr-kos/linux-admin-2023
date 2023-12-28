#!/bin/sh

wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-headers-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-headers-6.6.6-060606_6.6.6-060606.202312111032_all.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-image-unsigned-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-modules-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb

dpkg -i *.deb

grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
echo "Grub update done."
shutdown -r now

