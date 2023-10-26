#!/bin/bash
sudo mount -t btrfs -o subvol=@ /dev/sdc7 /mnt/ubuntu/
sudo mount -t btrfs -o subvol=@homeubuntu /dev/sdc8 /mnt/ubuntu/home
sudo mount -t btrfs -o subvol=@flatpak /dev/sdd1 /mnt/ubuntu/var/lib/flatpak
sudo mount -t btrfs -o subvol=@docker /dev/sdc8 /mnt/ubuntu/var/lib/docker
sudo mount -t btrfs -o subvol=@containers /dev/sdc8 /mnt/ubuntu/var/lib/containers
sudo mount /dev/sdc4 /mnt/ubuntu/boot
sudo mount /dev/sdc1 /mnt/ubuntu/boot/efi

for dir in /dev /proc /sys /run; do mount --bind $dir /mnt/ubuntu/$dir ; done