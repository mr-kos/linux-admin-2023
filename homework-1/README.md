Занятие 1. Vagrant-стенд для обновления ядра и создания образа системы

Цель домашнего задания
Научиться обновлять ядро в ОС Linux. Получение навыков работы с Vagrant, Packer и публикацией готовых образов в Vagrant Cloud. 
Описание домашнего задания
1) Обновить ядро ОС из репозитория ELRepo
2) Создать Vagrant box c помощью Packer
3) Загрузить Vagrant box в Vagrant Cloud

Дополнительные задания:
Ядро собрано из исходников
В образе нормально работают VirtualBox Shared Folders

Выполнение:
1) В качестве исходного vagrant-box использовал не CentOS, а Ubuntu 23.10.

Изначальная версия ядра:

vagrant@kernel-update:~$ uname -r
6.5.0-14-generic

        "linux /casper/vmlinuz ",
        "initrd=/casper/initrd ",
        
                "autoinstall ",
        "ds=nocloud-net;s=http://{{.HTTPIP}}:{{.HTTPPort}}/ubuntu_64_preseed.cfg ",
