#!/bin/bash
sudo mount -t btrfs -o subvol=@ /dev/sdc5 /mnt/fedora/
sudo mount -t btrfs -o subvol=@homefedora /dev/sdc8 /mnt/fedora/home
sudo mount -t btrfs -o subvol=@flatpak /dev/sdd1 /mnt/fedora/var/lib/flatpak
sudo mount -t btrfs -o subvol=@docker /dev/sdc8 /mnt/fedora/var/lib/docker
sudo mount -t btrfs -o subvol=@containers /dev/sdc8 /mnt/fedora/var/lib/containers
sudo mount /dev/sdc2 /mnt/fedora/boot
sudo mount /dev/sdc1 /mnt/fedora/boot/efi

for dir in /dev /proc /sys /run; do mount --bind $dir /mnt/archinstall/$dir ; done