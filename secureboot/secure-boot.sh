#!/bin/bash

# Secure Boot
sudo pacman -S --needed dkms sbsigntools efitools refind

# 1. Move the existing bootloader from BOOTX64.EFI to GRUBX64.EFI
mv /mnt/archinstall/boot/EFI/BOOT/BOOTX64.EFI /mnt/archinstall/boot/EFI/BOOT/GRUBX64.EFI

# 2. Move the shim shared into Boot
cp /usr/share/shim-signed/shimx64.efi /mnt/archinstall/boot/EFI/BOOT/BOOTX64.EFI
cp /usr/share/shim-signed/mmx64.efi /mnt/archinstall/boot/EFI/BOOT/MMX64.EFI

# 3. Copy the previous signed keys
cp /etc/refind.d/keys/* /mnt/archinstall/etc/refind.d/keys
cp -r /etc/refind.d/keys /mnt/archinstall/boot/EFI/

# Refind Boot Manager - SATA SSD
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "rEFInd Boot Manager" --loader /EFI/REFIND/SHIMX64.EFI
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "rEFInd Boot Manager (direct)" --loader /EFI/REFIND/GRUBX64.EFI

# Arch Linux 
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux NVME Secureboot" --loader /EFI/BOOT/BOOTx64.EFI
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux NVME" --loader /EFI/SYSTEMD/SYSTEMD-BOOTX64.efi

# Refind Boot Manager - SATA SSD
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "rEFInd Boot Manager" --loader /EFI/REFIND/SHIMX64.EFI
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "rEFInd Boot Manager (direct)" --loader /EFI/REFIND/GRUBX64.EFI

# Ubuntu Linux
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "Ubuntu NVME Secureboot" --loader /EFI/UBUNTU/SHIMX64.EFI

# Fedora Linux
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "Fedora NVME Secureboot" --loader /EFI/FEDORA/SHIM.EFI

# Nobara Linux
efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "Nobara NVME Secureboot" --loader /EFI/NOBARA/SHIM.EFI

# Debian Linux

# Additional Distros on another drive
efibootmgr --unicode --disk /dev/sdc --part 1 --create --label "Fedora Secureboot" --loader /EFI/FEDORA/SHIM.EFI
efibootmgr --unicode --disk /dev/sdc --part 1 --create --label "Nobara Secureboot" --loader /EFI/NOBARA/SHIMX64.EFI
efibootmgr --unicode --disk /dev/sdc --part 1 --create --label "Ubuntu Secureboot" --loader /EFI/UBUNTU/SHIMX64.EFI

# Arch Portable
efibootmgr --unicode --disk /dev/sde --part 1 --create --label "Arch Linux Portable SecureBoot" --loader /EFI/BOOT/BOOTx64.EFI
efibootmgr --unicode --disk /dev/sde --part 1 --create --label "Arch Portable Sandisk" --loader /EFI/SYSTEMD/SYSTEMD-BOOTX64.efi

# 5. Sign the boot images
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux /boot/vmlinuz-linux
#sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-lts /boot/vmlinuz-linux-lts
#sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-zen /boot/vmlinuz-linux-zen
#sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-hardened /boot/vmlinuz-linux-hardened

# Sign the efi files
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/EFI/BOOT/GRUBx64.EFI /boot/EFI/BOOT/GRUBx64.EFI
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/EFI/systemd/systemd-bootx64.efi /boot/EFI/systemd/systemd-bootx64.efi

# 6. Update DKMS Framework conf with the signing keys location
# mok_signing_key=/etc/refind.d/keys/refind_local.key
echo "mok_signing_key=/etc/refind.d/keys/refind_local.key" >>/etc/dkms/framework.conf
# mok_certificate=/etc/refind.d/keys/refind_local.cer
echo "mok_certificate=/etc/refind.d/keys/refind_local.cer" >>/etc/dkms/framework.conf
# modprobe_on_install="true"
echo "modprobe_on_install="true"" >>/etc/dkms/framework.conf

# 7. Add a pacman hook to sign kernels everytime there is an update
mkdir /etc/pacman.d/hooks/

# Cockpit
ln -sfn /dev/null /etc/motd.d/cockpit

0006,0005,0001,0007,0003,0006,0002,0004,0000