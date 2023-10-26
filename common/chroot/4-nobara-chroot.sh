#!/bin/bash
sudo mount -t btrfs -o subvol=@ /dev/sdc6 /mnt/nobara/
sudo mount -t btrfs -o subvol=@homefedora /dev/sdc8 /mnt/nobara/home
sudo mount -t btrfs -o subvol=@flatpak /dev/sdd1 /mnt/nobara/var/lib/flatpak
sudo mount -t btrfs -o subvol=@docker /dev/sdc8 /mnt/nobara/var/lib/docker
sudo mount -t btrfs -o subvol=@containers /dev/sdc8 /mnt/nobara/var/lib/containers
sudo mount /dev/sdc3 /mnt/nobara/boot
sudo mount /dev/sdc1 /mnt/nobara/boot/efi

for dir in /dev /proc /sys /run; do mount --bind $dir /mnt/archinstall/$dir ; done