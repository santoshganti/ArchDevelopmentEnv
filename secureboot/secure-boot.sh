#!/bin/bash

# Secure Boot
sudo pacman -S dkms sbsigntools efitools refind

# 1. Move the existing bootloader from BOOTX64.EFI to GRUBX64.EFI
mv /mnt/archinstall/boot/EFI/BOOT/BOOTX64.EFI /mnt/archinstall/boot/EFI/BOOT/GRUBX64.EFI

# 2. Move the shim shared into Boot
cp /usr/share/shim-signed/shimx64.efi /mnt/archinstall/boot/EFI/BOOT/BOOTX64.EFI
cp /usr/share/shim-signed/mmx64.efi /mnt/archinstall/boot/EFI/BOOT/MMX64.EFI

# 3. Copy the previous signed keys
cp /etc/refind.d/keys/* /mnt/archinstall/etc/refind.d/keys
cp -r /etc/refind.d/keys /mnt/archinstall/boot/EFI/

# 4. Make a boot entry
efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Arch Linux Secureboot" --loader /EFI/BOOT/BOOTx64.EFI
efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Arch Linux NVME" --loader /EFI/SYSTEMD/SYSTEMD-BOOTX64.efi

# Fedora
efibootmgr --unicode --disk /dev/sdc --part 1 --create --label "Nobara Secureboot" --loader /EFI/FEDORA/SHIM.EFI

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
