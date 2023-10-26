# Refind Boot Manager - NVME SSD
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "rEFInd Boot Manager" --loader /EFI/REFIND/SHIMX64.EFI
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "rEFInd Boot Manager (direct)" --loader /EFI/REFIND/GRUBX64.EFI

sudo efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "rEFInd Boot Manager - Temp" --loader /EFI/REFIND/SHIMX64.EFI
sudo efibootmgr --unicode --disk /dev/nvme0n1 --part 1 --create --label "rEFInd Boot Manager (direct) - Temp" --loader /EFI/REFIND/GRUBX64.EFI

# Arch Linux - NVME
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Arch Linux NVME Secureboot" --loader /EFI/BOOT/BOOTx64.EFI
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Arch Linux NVME" --loader /EFI/SYSTEMD/SYSTEMD-BOOTX64.efi

# Refind Boot Manager - SATA SSD
sudo efibootmgr --unicode --disk /dev/sde --part 3 --create --label "SANDISK - rEFInd Boot Manager" --loader /EFI/REFIND/SHIMX64.EFI
sudo efibootmgr --unicode --disk /dev/sde --part 3 --create --label "SANDISK - rEFInd Boot Manager(direct)" --loader /EFI/REFIND/GRUBX64.EFI

# Ubuntu Linux
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "ubuntu" --loader /EFI/UBUNTU/SHIMX64.EFI

# Fedora Linux
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "fedora" --loader /EFI/FEDORA/SHIM.EFI

# Nobara Linux
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Nobara Secureboot" --loader /EFI/NOBARA/SHIMX64.EFI

# Debian Linux
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Debian Secureboot" --loader /EFI/DEBIAN/SHIMX64.EFI

# PopOS
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "PopOS" --loader /EFI/Pop_OS-f32fc91f-ec73-4c51-868f-9f53ee7c099d/vmlinuz.efi

# OpenSUSE Tumbelwed
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "opensuse" --loader /EFI/OPENSUSE/GRUBX64.EFI
sudo efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "opensuse-secureboot" --loader /EFI/OPENSUSE/SHIM.EFI

# Ventoy
sudo efibootmgr --unicode --disk /dev/sdg --part 2 --create --label "Ventoy Secureboot" --loader /EFI/BOOT/BOOTX64.EFI

# Arch Portable
sudo efibootmgr --unicode --disk /dev/sde --part 3 --create --label "SANDISK - Arch Linux SecureBoot" --loader /EFI/BOOT/BOOTx64.EFI
sudo efibootmgr --unicode --disk /dev/sde --part 3 --create --label "SANDISK - Arch Linux" --loader /EFI/SYSTEMD/SYSTEMD-BOOTX64.efi



# Delete Bootnum
sudo efibootmgr --delete-bootnum --bootnum