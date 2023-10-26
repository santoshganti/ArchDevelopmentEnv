#!/bin/bash
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