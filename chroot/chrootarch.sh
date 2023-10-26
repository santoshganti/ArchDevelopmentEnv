#!/bin/bash
mount -o subvol=@ /dev/sdb2 /mnt
mount -o subvol=@home /dev/sdb2 /mnt/home
mount -o subvol=@log /dev/sdb2 /mnt/var/log
mount -o subvol=@pkg /dev/sdb2 /mnt/var/cache/pacman/pkg
mount /dev/sdb1 /mnt/boot/
arch-chroot /mnt

# Arch CHROOT
mount -t btrfs -o subvol=@ /dev/sdb2 /mnt/archinstall/
mount -t btrfs -o subvol=@home /dev/sdb2 /mnt/archinstall/home
mount -t btrfs -o subvol=@log /dev/sdb2 /mnt/archinstall/var/log
mount -t btrfs -o subvol=@pkg /dev/sdb2 /mnt/archinstall/var/cache/pacman/pkg
mount -t btrfs -o subvol=@.snapshots /dev/sdb2 /mnt/archinstall/.snapshots
mount -t btrfs -o subvol=@aur /dev/sdb2 /mnt/archinstall/home/santoshganti/.cache/yay

mount /dev/sdb1 /mnt/archinstall/boot/
arch-chroot /mnt/archinstall

#########################################################################################################

mount -t btrfs -o subvol=@ /dev/sda2 /mnt/archinstall/
mount -t btrfs -o subvol=@home /dev/sda2 /mnt/archinstall/home
mount -t btrfs -o subvol=@log /dev/sda2 /mnt/archinstall/var/log
mount -t btrfs -o subvol=@pkg /dev/sda2 /mnt/archinstall/var/cache/pacman/pkg
mount -t btrfs -o subvol=@data /dev/sda2 /mnt/archinstall/data
mount -t btrfs -o subvol=@virtualmachines /dev/sda2 /mnt/archinstall/virtualmachines
mount -t btrfs -o subvol=@SteamLibrary /dev/sda2 /mnt/archinstall/SteamLibrary
mount -t btrfs -o subvol=@bottles /dev/sda2 /mnt/archinstall/bottles
mount -t btrfs -o subvol=@srv /dev/sda2 /mnt/archinstall/srv
mount -t btrfs -o subvol=@opt /dev/sda2 /mnt/archinstall/opt

mount /dev/sda1 /mnt/archinstall/boot/

#########################################################################################################

mount -t btrfs -o subvol=@ /dev/nvme0n1p2 /mnt/archinstall/
mount -t btrfs -o subvol=@home /dev/nvme0n1p2 /mnt/archinstall/home
mount -t btrfs -o subvol=@log /dev/nvme0n1p2 /mnt/archinstall/var/log
mount -t btrfs -o subvol=@pkg /dev/nvme0n1p2 /mnt/archinstall/var/cache/pacman/pkg
mount -t btrfs -o subvol=@data /dev/nvme0n1p2 /mnt/archinstall/data
mount -t btrfs -o subvol=@virtualmachines /dev/nvme0n1p2 /mnt/archinstall/virtualmachines
mount -t btrfs -o subvol=@SteamLibrary /dev/nvme0n1p2 /mnt/archinstall/SteamLibrary
mount -t btrfs -o subvol=@bottles /dev/nvme0n1p2 /mnt/archinstall/bottles
mount -t btrfs -o subvol=@srv /dev/nvme0n1p2 /mnt/archinstall/srv
mount -t btrfs -o subvol=@opt /dev/nvme0n1p2 /mnt/archinstall/opt

mount /dev/nvme0n1p1 /mnt/archinstall/boot/

for dir in /dev /proc /sys /run; do mount --bind $dir /mnt/nobara/$dir ; done

#########################################################################################################

mount -t btrfs -o subvol=@ /dev/nvme0n1p3 /mnt/Fedora/
mount -t btrfs -o subvol=@home /dev/nvme0n1p3 /mnt/Fedora/home
mount -t btrfs -o subvol=@data /dev/nvme0n1p3 /mnt/Fedora/data
mount -t btrfs -o subvol=@srv /dev/nvme0n1p3 /mnt/Fedora/srv
mount -t btrfs -o subvol=@opt /dev/nvme0n1p3 /mnt/Fedora/opt
mount -t btrfs -o subvol=@log /dev/nvme0n1p3 /mnt/Fedora/var/log
mount -t btrfs -o subvol=@usr-local /dev/nvme0n1p3 /mnt/Fedora/usr/local
mount -t btrfs -o subvol=@virtualmachines /dev/nvme0n1p3 /mnt/Fedora/virtualmachines
mount -t btrfs -o subvol=@bottles /dev/nvme0n1p3 /mnt/Fedora/bottles
mount -t btrfs -o subvol=@SteamLibrary /dev/nvme0n1p3 /mnt/Fedora/SteamLibrary
mount /dev/nvme0n1p2 /mnt/Fedora/boot/
mount /dev/nvme0n1p1 /mnt/Fedora/boot/efi

# Copy the following configs
# /etc/sysctl.d/
# /etc/dkms/framework.conf
# if arch copy /etc/mkinitcpio.conf
# copy udev rules
