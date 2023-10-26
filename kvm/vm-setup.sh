#!/bin/bash
sudo pacman -S archlinux-keyring qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat dmidecode ebtables iptables libguestfs
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
# yay -S looking-glass-module-dkms looking-glass-host looking-glass
