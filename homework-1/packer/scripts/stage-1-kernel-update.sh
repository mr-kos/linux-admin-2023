#!/bin/sh

cd /home/vagrant
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-headers-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-headers-6.6.6-060606_6.6.6-060606.202312111032_all.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-image-unsigned-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb
wget https://kernel.ubuntu.com/mainline/v6.6.6/amd64/linux-modules-6.6.6-060606-generic_6.6.6-060606.202312111032_amd64.deb

dpkg -i /home/vagrant/*.deb

rm -f /boot/*6.5* && echo "Old kernels were deleted"
grub-mkconfig -o /boot/grub2/grub.cfg
grub-set-default 0
rm -f initrd.img.old && rm -f vmlinuz.old && echo "old bootloader files were deleted"
echo "Grub was updated!"
